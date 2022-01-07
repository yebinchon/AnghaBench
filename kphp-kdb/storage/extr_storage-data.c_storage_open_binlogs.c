
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int binlogs; TYPE_1__** B; } ;
typedef TYPE_2__ volume_t ;
struct TYPE_4__ {scalar_t__ fd_rdonly; int abs_filename; } ;


 int O_RDONLY ;
 int exit (int) ;
 int kprintf (char*,int ) ;
 scalar_t__ open (int ,int ) ;

void storage_open_binlogs (volume_t *V) {
  int k;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->fd_rdonly < 0) {
      V->B[k]->fd_rdonly = open (V->B[k]->abs_filename, O_RDONLY);
      if (V->B[k]->fd_rdonly < 0) {
        kprintf ("Couldn't open %s for reading. %m\n", V->B[k]->abs_filename);
        exit (1);
      }
    }
  }
}
