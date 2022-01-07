
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* kfs_file_handle_t ;
struct TYPE_5__ {TYPE_1__* info; int fd; } ;
struct TYPE_4__ {int filename; } ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RPC_PROXY_INDEX_MAGIC ;
 int assert (int) ;
 int binlog_disabled ;
 int close (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ ifd ;
 int jump_log_crc32 ;
 long long jump_log_pos ;
 int jump_log_ts ;
 scalar_t__ open (char*,int,...) ;
 int read (int ,int*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 int write (scalar_t__,int*,int) ;

void load_index (kfs_file_handle_t index, const char *bname) {
  static int t[5];
  if (!index) {
    if (!binlog_disabled) {
      static char buf[1000];
      snprintf (buf, 1000, "%s.000000", bname);
      ifd = open (buf, O_WRONLY | O_TRUNC | O_CREAT, 0660);
      if (ifd < 0) {
        fprintf (stderr, "Error opening index: %m\n");
        exit (1);
      }
      t[0] = RPC_PROXY_INDEX_MAGIC;
      t[1] = 0;
      t[2] = 0;
      t[3] = 0;
      t[4] = 0;
      assert (write (ifd, t, 20) == 20);
    }
    return;
  }
  assert (read (index->fd, t, 20) == 20);
  if (t[0] != RPC_PROXY_INDEX_MAGIC) {
    fprintf (stderr, "Index is not from rpc-proxy\n");
    exit (3);
  }
  jump_log_pos = *(long long *)(t + 1);
  jump_log_crc32 = t[3];
  jump_log_ts = t[4];
  close (index->fd);
  if (!binlog_disabled) {
    ifd = open (index->info->filename, O_WRONLY);
  }
}
