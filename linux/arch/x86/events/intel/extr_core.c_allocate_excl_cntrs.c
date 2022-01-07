
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_excl_cntrs {int core_id; int lock; } ;


 int GFP_KERNEL ;
 int cpu_to_node (int) ;
 struct intel_excl_cntrs* kzalloc_node (int,int ,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct intel_excl_cntrs *allocate_excl_cntrs(int cpu)
{
 struct intel_excl_cntrs *c;

 c = kzalloc_node(sizeof(struct intel_excl_cntrs),
    GFP_KERNEL, cpu_to_node(cpu));
 if (c) {
  raw_spin_lock_init(&c->lock);
  c->core_id = -1;
 }
 return c;
}
