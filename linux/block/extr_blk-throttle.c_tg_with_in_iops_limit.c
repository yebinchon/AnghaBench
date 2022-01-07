
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct throtl_grp {unsigned long* slice_start; int* io_disp; TYPE_1__* td; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int throtl_slice; } ;


 int HZ ;
 unsigned long UINT_MAX ;
 int bio_data_dir (struct bio*) ;
 int do_div (unsigned long,int ) ;
 unsigned long jiffies ;
 unsigned long roundup (unsigned long,int ) ;
 scalar_t__ tg_iops_limit (struct throtl_grp*,int) ;

__attribute__((used)) static bool tg_with_in_iops_limit(struct throtl_grp *tg, struct bio *bio,
      unsigned long *wait)
{
 bool rw = bio_data_dir(bio);
 unsigned int io_allowed;
 unsigned long jiffy_elapsed, jiffy_wait, jiffy_elapsed_rnd;
 u64 tmp;

 jiffy_elapsed = jiffies - tg->slice_start[rw];


 jiffy_elapsed_rnd = roundup(jiffy_elapsed + 1, tg->td->throtl_slice);
 tmp = (u64)tg_iops_limit(tg, rw) * jiffy_elapsed_rnd;
 do_div(tmp, HZ);

 if (tmp > UINT_MAX)
  io_allowed = UINT_MAX;
 else
  io_allowed = tmp;

 if (tg->io_disp[rw] + 1 <= io_allowed) {
  if (wait)
   *wait = 0;
  return 1;
 }


 jiffy_wait = jiffy_elapsed_rnd - jiffy_elapsed;

 if (wait)
  *wait = jiffy_wait;
 return 0;
}
