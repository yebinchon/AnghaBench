
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kfs_replica {int binlog_num; struct kfs_file_info** binlogs; } ;
struct kfs_file_info {scalar_t__ log_pos; scalar_t__ kfs_file_type; char* filename; int kfs_headers; long long file_size; struct kfs_replica* replica; } ;
typedef TYPE_1__* kfs_file_handle_t ;
struct TYPE_3__ {int fd; int lock; int offset; struct kfs_file_info* info; } ;


 int F_WRLCK ;
 int O_RDWR ;
 int O_WRONLY ;
 int SEEK_END ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int dup2 (int,int) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ kfs_binlog ;
 scalar_t__ lock_whole_file (int,int ) ;
 long long lseek (int,int ,int ) ;
 int open (char*,int ) ;
 int stderr ;

long long append_to_binlog_ext (kfs_file_handle_t F, int allow_read) {
  assert (F && F->info && F->info->log_pos >= 0 && F->info->kfs_file_type == kfs_binlog && F->info->replica);

  int fd, old_fd = -1;
  struct kfs_file_info *FI = F->info;
  struct kfs_replica *R = FI->replica;

  if (F->fd >= 0) {
    old_fd = F->fd;
    assert (close (F->fd) >= 0);
    F->fd = -1;
  }

  if (R && (!R->binlog_num || R->binlogs[R->binlog_num - 1] != FI)) {
    fprintf (stderr, "cannot append to last read binlog file %s: newer binlog %s already exists\n", FI->filename, R->binlogs[R->binlog_num - 1]->filename);
    return -1;
  }

  fd = open (FI->filename, allow_read ? O_RDWR : O_WRONLY);
  if (fd < 0) {
    fprintf (stderr, "cannot reopen binlog file %s in write mode: %m\n", FI->filename);
    return -1;
  }
  if (old_fd > 0 && fd != old_fd) {
    assert (dup2 (fd, old_fd) == old_fd);
    close (fd);
    fd = old_fd;
  }
  long long file_size = lseek (fd, 0, SEEK_END);
  assert (file_size > FI->kfs_headers * 4096);
  FI->file_size = file_size;
  F->fd = fd;
  F->lock = 0;
  F->offset = FI->kfs_headers * 4096;

  if (lock_whole_file (fd, F_WRLCK) <= 0) {
    fprintf (stderr, "cannot lock binlog file %s for writing\n", FI->filename);
    return -1;
  }

  F->lock = -1;

  return FI->log_pos + file_size - F->offset;
}
