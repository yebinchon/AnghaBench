
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int is_fake; } ;


 int ENOMEM ;
 struct cpu_hw_events* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int free_fake_cpuc (struct cpu_hw_events*) ;
 scalar_t__ intel_cpuc_prepare (struct cpu_hw_events*,int) ;
 struct cpu_hw_events* kzalloc (int,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static struct cpu_hw_events *allocate_fake_cpuc(void)
{
 struct cpu_hw_events *cpuc;
 int cpu = raw_smp_processor_id();

 cpuc = kzalloc(sizeof(*cpuc), GFP_KERNEL);
 if (!cpuc)
  return ERR_PTR(-ENOMEM);
 cpuc->is_fake = 1;

 if (intel_cpuc_prepare(cpuc, cpu))
  goto error;

 return cpuc;
error:
 free_fake_cpuc(cpuc);
 return ERR_PTR(-ENOMEM);
}
