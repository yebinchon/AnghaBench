
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ rmid; } ;
struct TYPE_2__ {scalar_t__ rmid; } ;
struct rdtgroup {scalar_t__ type; TYPE_1__ mon; } ;


 scalar_t__ RDTMON_GROUP ;
 scalar_t__ rdt_mon_capable ;

__attribute__((used)) static bool is_rmid_match(struct task_struct *t, struct rdtgroup *r)
{
 return (rdt_mon_capable &&
  (r->type == RDTMON_GROUP) && (t->rmid == r->mon.rmid));
}
