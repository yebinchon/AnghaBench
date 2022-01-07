
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int disabled; int binlogs; scalar_t__ cur_log_pos; int mutex_write; TYPE_3__** B; } ;
typedef TYPE_1__ volume_t ;
struct stat {scalar_t__ st_size; } ;
struct TYPE_7__ {int disabled; int st_fsync; int st_read; } ;
typedef TYPE_2__ storage_dir_t ;
struct TYPE_8__ {int dir_id; int fd_rdonly; int fd_wronly; int st_fsync; int st_read; int abs_filename; } ;
typedef TYPE_3__ storage_binlog_file_t ;


 TYPE_2__* Dirs ;
 int F_WRLCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 TYPE_1__** Volumes ;
 int close (int) ;
 int dirs ;
 int fstat (int,struct stat*) ;
 scalar_t__ lock_whole_file (int,int ) ;
 int memset (int *,int ,int) ;
 int open (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vkprintf (int,char*,int ) ;
 int volumes ;

int change_dir_write_status (int dir_id, int disabled) {
  int mask = 1 << dir_id;
  int a = disabled << dir_id;
  int i, j;
  int r = 0;
  if (dir_id < 0 || dir_id >= dirs) {
    return -1;
  }
  storage_dir_t *D = Dirs + dir_id;
  if (D->disabled == disabled) {
    return 0;
  }
  for (i = 0; i < volumes; i++) {
    volume_t *V = Volumes[i];
    storage_binlog_file_t *B = ((void*)0);
    if ((V->disabled & mask) != a) {
      for (j = 0; j < V->binlogs; j++) {
        if (V->B[j]->dir_id == dir_id) {
          B = V->B[j];
          break;
        }
      }
      if (B) {
        V->disabled ^= mask;
        if (disabled) {
          if (B->fd_rdonly >= 0) {
            close (B->fd_rdonly);
            B->fd_rdonly = -1;
          }
          pthread_mutex_lock (&V->mutex_write);
          if (B->fd_wronly >= 0) {
            close (B->fd_wronly);
            B->fd_wronly = -1;
          }
          pthread_mutex_unlock (&V->mutex_write);
        } else {
          if (B->fd_rdonly < 0) {
            int fd = open (B->abs_filename, O_RDONLY);
            if (fd >= 0) {
              B->fd_rdonly = fd;
            }
          }
          pthread_mutex_lock (&V->mutex_write);
          if (B->fd_wronly < 0) {
            int fd = open (B->abs_filename, O_WRONLY);
            if (fd >= 0) {
              struct stat buf;
              if (!fstat (fd, &buf) && buf.st_size == V->cur_log_pos && lock_whole_file (fd, F_WRLCK)) {
                B->fd_wronly = fd;
              } else {
                vkprintf (1, "Didn't open %s in write mode.\n", B->abs_filename);
                close (fd);
              }
            }
          }
          pthread_mutex_unlock (&V->mutex_write);
          memset (&B->st_read, 0, sizeof (B->st_read));
          memset (&B->st_fsync, 0, sizeof (B->st_fsync));
        }
        r++;
      }
    }
  }
  D->disabled = disabled;
  if (!disabled) {
    memset (&D->st_read, 0, sizeof (D->st_read));
    memset (&D->st_fsync, 0, sizeof (D->st_fsync));
  }
  return r;
}
