
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t LOADAVG_15MIN ;
 size_t LOADAVG_1MIN ;
 size_t LOADAVG_5MIN ;
 int getloadavg (double*,int) ;
 double* plat_loadavg ;

void Platform_getLoadAverage(double* one, double* five, double* fifteen) {
   getloadavg( plat_loadavg, 3 );
   *one = plat_loadavg[LOADAVG_1MIN];
   *five = plat_loadavg[LOADAVG_5MIN];
   *fifteen = plat_loadavg[LOADAVG_15MIN];
}
