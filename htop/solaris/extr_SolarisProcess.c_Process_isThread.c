
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kernel; scalar_t__ is_lwp; } ;
typedef TYPE_1__ SolarisProcess ;
typedef int Process ;



bool Process_isThread(Process* this) {
   SolarisProcess* fp = (SolarisProcess*) this;

   if (fp->kernel == 1 ) {
      return 1;
   } else if (fp->is_lwp) {
      return 1;
   } else {
      return 0;
   }
}
