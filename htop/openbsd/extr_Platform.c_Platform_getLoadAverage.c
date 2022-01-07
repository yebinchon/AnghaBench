
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadavg {double fscale; scalar_t__* ldavg; } ;
typedef int loadAverage ;


 int CTL_VM ;
 int VM_LOADAVG ;
 int sysctl (int*,int,struct loadavg*,size_t*,int *,int ) ;

void Platform_getLoadAverage(double* one, double* five, double* fifteen) {
   struct loadavg loadAverage;
   int mib[2] = { CTL_VM, VM_LOADAVG };
   size_t size = sizeof(loadAverage);

   int err = sysctl(mib, 2, &loadAverage, &size, ((void*)0), 0);
   if (err) {
      *one = 0;
      *five = 0;
      *fifteen = 0;
      return;
   }
   *one = (double) loadAverage.ldavg[0] / loadAverage.fscale;
   *five = (double) loadAverage.ldavg[1] / loadAverage.fscale;
   *fifteen = (double) loadAverage.ldavg[2] / loadAverage.fscale;
}
