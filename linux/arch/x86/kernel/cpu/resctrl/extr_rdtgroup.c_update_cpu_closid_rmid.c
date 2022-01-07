
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rmid; } ;
struct rdtgroup {TYPE_1__ mon; int closid; } ;
struct TYPE_4__ {int default_rmid; int default_closid; } ;


 TYPE_2__ pqr_state ;
 int resctrl_sched_in () ;
 int this_cpu_write (int ,int ) ;

__attribute__((used)) static void update_cpu_closid_rmid(void *info)
{
 struct rdtgroup *r = info;

 if (r) {
  this_cpu_write(pqr_state.default_closid, r->closid);
  this_cpu_write(pqr_state.default_rmid, r->mon.rmid);
 }






 resctrl_sched_in();
}
