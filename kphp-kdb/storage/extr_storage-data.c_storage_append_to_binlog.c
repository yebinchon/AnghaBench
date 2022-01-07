
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wronly_binlogs; int binlogs; long long log_readto_pos; TYPE_1__** B; } ;
typedef TYPE_2__ volume_t ;
struct TYPE_4__ {scalar_t__ size; int fd_wronly; int abs_filename; int prefix; } ;


 int F_WRLCK ;
 int O_WRONLY ;
 int SEEK_END ;
 int STORAGE_ERR_NO_WRONLY_BINLOGS ;
 int close (int) ;
 int exit (int) ;
 int kprintf (char*,int ,...) ;
 scalar_t__ lock_whole_file (int,int ) ;
 long long lseek (int,int ,int ) ;
 int open (int ,int ) ;
 int vkprintf (int,char*,int,scalar_t__) ;

int storage_append_to_binlog (volume_t *V) {
  int k;
  V->wronly_binlogs = 0;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->size < V->B[0]->size) {
      kprintf ("Skip \"%s\", since it is shorter than %s.\n", V->B[k]->abs_filename, V->B[0]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    if (!V->B[k]->prefix) {
      kprintf ("Skip \"%s\", since it isn't prefix of %s.\n", V->B[k]->abs_filename, V->B[0]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    V->B[k]->fd_wronly = open (V->B[k]->abs_filename, O_WRONLY);
    if (V->B[k]->fd_wronly < 0) {
      kprintf ("open (\"%s\", O_WRONLY) fail. %m", V->B[k]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    long long end_pos = lseek (V->B[k]->fd_wronly, 0, SEEK_END);
    if (end_pos != V->log_readto_pos) {
      kprintf ("lseek (\"%s\", 0, SEEK_END) returns %lld, but V->log_readto_pos is equal to %lld.\n", V->B[k]->abs_filename, end_pos, V->log_readto_pos);
      close (V->B[k]->fd_wronly);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    if (lock_whole_file (V->B[k]->fd_wronly, F_WRLCK) <= 0) {
      kprintf ("lock_whole_file (%s, F_WRLCK) fail.\n", V->B[k]->abs_filename);
      exit (1);
    }
    V->wronly_binlogs++;
  }
  if (V->wronly_binlogs <= 0) {
    vkprintf (1, "binlogs: %d, wronly: %d\n", V->binlogs, V->wronly_binlogs);
    return STORAGE_ERR_NO_WRONLY_BINLOGS;
  }
  return 0;
}
