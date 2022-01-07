
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ closid; } ;
struct rdtgroup {scalar_t__ type; scalar_t__ closid; } ;


 scalar_t__ RDTCTRL_GROUP ;
 scalar_t__ rdt_alloc_capable ;

__attribute__((used)) static bool is_closid_match(struct task_struct *t, struct rdtgroup *r)
{
 return (rdt_alloc_capable &&
  (r->type == RDTCTRL_GROUP) && (t->closid == r->closid));
}
