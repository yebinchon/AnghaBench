
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cf_events {int flags; int info; } ;




 int PMU_F_RESERVED ;
 int cpu_cf_events ;
 int lcctl (int ) ;
 int memset (int *,int ,int) ;
 int qctri (int *) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpum_cf_setup_cpu(void *flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);

 switch (*((int *) flags)) {
 case 129:
  memset(&cpuhw->info, 0, sizeof(cpuhw->info));
  qctri(&cpuhw->info);
  cpuhw->flags |= PMU_F_RESERVED;
  break;

 case 128:
  cpuhw->flags &= ~PMU_F_RESERVED;
  break;
 }


 lcctl(0);
}
