
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int name; int (* msr_update ) (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;} ;
struct rdt_domain {int dummy; } ;
struct msr_param {struct rdt_resource* res; } ;


 struct rdt_domain* get_domain_from_cpu (int,struct rdt_resource*) ;
 int pr_warn_once (char*,int,int ) ;
 int smp_processor_id () ;
 int stub1 (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;

void rdt_ctrl_update(void *arg)
{
 struct msr_param *m = arg;
 struct rdt_resource *r = m->res;
 int cpu = smp_processor_id();
 struct rdt_domain *d;

 d = get_domain_from_cpu(cpu, r);
 if (d) {
  r->msr_update(d, m, r);
  return;
 }
 pr_warn_once("cpu %d not found in any domain for resource %s\n",
       cpu, r->name);
}
