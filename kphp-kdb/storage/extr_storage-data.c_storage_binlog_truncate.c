
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int binlogs; TYPE_1__** B; } ;
typedef TYPE_2__ volume_t ;
typedef int off_t ;
struct TYPE_4__ {scalar_t__ fd_wronly; } ;


 int ftruncate (scalar_t__,int ) ;

__attribute__((used)) static void storage_binlog_truncate (volume_t *V, off_t off) {
  int k;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->fd_wronly >= 0) {
      ftruncate (V->B[k]->fd_wronly, off);
    }
  }
}
