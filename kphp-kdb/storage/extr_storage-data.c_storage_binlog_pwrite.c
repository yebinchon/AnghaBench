
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int binlogs; TYPE_3__** B; } ;
typedef TYPE_1__ volume_t ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {int fd_wronly; scalar_t__ size; } ;


 int STORAGE_ERR_PWRITE ;
 int close (int) ;
 int dirty_binlog_queue_push (TYPE_3__*) ;
 int ftruncate (int,scalar_t__) ;
 size_t pwrite (int,void*,size_t,scalar_t__) ;
 int wronly_binlogs_closed ;

int storage_binlog_pwrite (volume_t *V, void *buf, size_t count, off_t offset, off_t truncate_offset) {
  int ok = 0, k;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->fd_wronly >= 0) {
      if (pwrite (V->B[k]->fd_wronly, buf, count, offset) != count) {
        ftruncate (V->B[k]->fd_wronly, truncate_offset);
        V->B[k]->size = truncate_offset;
        close (V->B[k]->fd_wronly);
        wronly_binlogs_closed++;
        V->B[k]->fd_wronly = -2;
      } else {
        off_t bytes = count + offset;
        if (V->B[k]->size < bytes) {
          V->B[k]->size = bytes;
        }
        dirty_binlog_queue_push (V->B[k]);
        ok++;
      }
    }
  }
  if (!ok) {
    return STORAGE_ERR_PWRITE;
  }

  return 0;
}
