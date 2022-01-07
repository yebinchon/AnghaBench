
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int binlogs; TYPE_2__** B; } ;
typedef TYPE_1__ volume_t ;
struct TYPE_13__ {int dir_id; scalar_t__ fd_rdonly; long long size; } ;
typedef TYPE_2__ storage_binlog_file_t ;
typedef TYPE_2__* (* fcmp_t ) (scalar_t__,TYPE_2__*,TYPE_2__*) ;


 scalar_t__ CMP_IP ;
 int bad_image_cache_probe (TYPE_2__*,long long) ;
 int choose_reading_binlog_errors ;
 TYPE_2__* stub1 (scalar_t__,TYPE_2__*,TYPE_2__*) ;

storage_binlog_file_t *choose_reading_binlog (volume_t *V, long long offset, long long offset_end, int forbidden_dirmask) {
  int i;
  storage_binlog_file_t *R = ((void*)0);
  for (i = 0; i < V->binlogs; i++) {
    if (!((1 << V->B[i]->dir_id) & forbidden_dirmask) && V->B[i]->fd_rdonly >= 0 && V->B[i]->size >= offset_end && !bad_image_cache_probe (V->B[i], offset)) {
      R = R ? (* (fcmp_t *) CMP_IP)(CMP_IP + 1, R, V->B[i]) : V->B[i];
    }
  }
  if (R == ((void*)0)) {
    choose_reading_binlog_errors++;
  }
  return R;
}
