
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int kstat_t ;
struct TYPE_3__ {long ul; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef TYPE_2__ kstat_named_t ;
typedef int kstat_ctl_t ;


 int UV_EPERM ;
 int _SC_CLK_TCK ;
 int kstat_close (int *) ;
 scalar_t__ kstat_data_lookup (int *,char*) ;
 int * kstat_lookup (int *,char*,int ,char*) ;
 int * kstat_open () ;
 int kstat_read (int *,int *,int *) ;
 long sysconf (int ) ;

int uv_uptime(double* uptime) {
  kstat_ctl_t *kc;
  kstat_t *ksp;
  kstat_named_t *knp;

  long hz = sysconf(_SC_CLK_TCK);

  kc = kstat_open();
  if (kc == ((void*)0))
    return UV_EPERM;

  ksp = kstat_lookup(kc, (char*) "unix", 0, (char*) "system_misc");
  if (kstat_read(kc, ksp, ((void*)0)) == -1) {
    *uptime = -1;
  } else {
    knp = (kstat_named_t*) kstat_data_lookup(ksp, (char*) "clk_intr");
    *uptime = knp->value.ul / hz;
  }
  kstat_close(kc);

  return 0;
}
