
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int swapused ;
struct xsw_usage {int xsu_total; int xsu_used; } ;
struct TYPE_3__ {int total; int* values; } ;
typedef TYPE_1__ Meter ;


 int CTL_VM ;
 int VM_SWAPUSAGE ;
 int sysctl (int*,int,struct xsw_usage*,size_t*,int *,int ) ;

void Platform_setSwapValues(Meter* mtr) {
  int mib[2] = {CTL_VM, VM_SWAPUSAGE};
  struct xsw_usage swapused;
  size_t swlen = sizeof(swapused);
  sysctl(mib, 2, &swapused, &swlen, ((void*)0), 0);

  mtr->total = swapused.xsu_total / 1024;
  mtr->values[0] = swapused.xsu_used / 1024;
}
