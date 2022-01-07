
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_state {int state; int req_cyl; int cur_cyl; int expect_cyl; int settle_time; int retries; } ;


 int BLK_STS_IOERR ;
 int HZ ;
 int TRACK_ZERO ;




 int scan_track (struct floppy_state*) ;
 int seek_track (struct floppy_state*,int) ;

 int set_timeout (struct floppy_state*,int,int ) ;
 int settle_timeout ;

 int setup_transfer (struct floppy_state*) ;
 int swim3_dbg (char*,...) ;
 int swim3_end_request (struct floppy_state*,int ,int ) ;
 int swim3_err (char*,int,...) ;
 int swim3_readbit (struct floppy_state*,int ) ;
 int swim3_warn (char*,char*) ;

__attribute__((used)) static void act(struct floppy_state *fs)
{
 for (;;) {
  swim3_dbg("  act loop, state=%d, req_cyl=%d, cur_cyl=%d\n",
     fs->state, fs->req_cyl, fs->cur_cyl);

  switch (fs->state) {
  case 132:
   return;

  case 130:
   if (swim3_readbit(fs, TRACK_ZERO)) {
    swim3_dbg("%s", "    locate track 0\n");
    fs->cur_cyl = 0;
    if (fs->req_cyl == 0)
     fs->state = 133;
    else
     fs->state = 129;
    break;
   }
   scan_track(fs);
   return;

  case 129:
   if (fs->cur_cyl < 0) {
    fs->expect_cyl = -1;
    fs->state = 130;
    break;
   }
   if (fs->req_cyl == fs->cur_cyl) {
    swim3_warn("%s", "Whoops, seeking 0\n");
    fs->state = 133;
    break;
   }
   seek_track(fs, fs->req_cyl - fs->cur_cyl);
   return;

  case 128:

   fs->settle_time = (HZ + 32) / 33;
   set_timeout(fs, fs->settle_time, settle_timeout);
   return;

  case 133:
   if (fs->cur_cyl != fs->req_cyl) {
    if (fs->retries > 5) {
     swim3_err("Wrong cylinder in transfer, want: %d got %d\n",
        fs->req_cyl, fs->cur_cyl);
     swim3_end_request(fs, BLK_STS_IOERR, 0);
     fs->state = 132;
     return;
    }
    fs->state = 129;
    break;
   }
   setup_transfer(fs);
   return;

  case 131:
   seek_track(fs, -5);
   return;

  default:
   swim3_err("Unknown state %d\n", fs->state);
   return;
  }
 }
}
