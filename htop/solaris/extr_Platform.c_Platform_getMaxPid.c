
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int v_proc; } ;
typedef TYPE_1__ kvar_t ;
struct TYPE_6__ {TYPE_1__* ks_data; } ;
typedef TYPE_2__ kstat_t ;
typedef int kstat_ctl_t ;


 int kstat_close (int *) ;
 TYPE_2__* kstat_lookup (int *,char*,int ,char*) ;
 int * kstat_open () ;
 int kstat_read (int *,TYPE_2__*,int *) ;

int Platform_getMaxPid() {
   kstat_ctl_t *kc = ((void*)0);
   kstat_t *kshandle = ((void*)0);
   kvar_t *ksvar = ((void*)0);
   int vproc = 32778;
   kc = kstat_open();
   if (kc != ((void*)0)) { kshandle = kstat_lookup(kc,"unix",0,"var"); }
   if (kshandle != ((void*)0)) { kstat_read(kc,kshandle,((void*)0)); }
   ksvar = kshandle->ks_data;
   if (ksvar->v_proc > 0 ) {
      vproc = ksvar->v_proc;
   }
   if (kc != ((void*)0)) { kstat_close(kc); }
   return vproc;
}
