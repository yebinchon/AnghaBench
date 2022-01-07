
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_regs {int core_id; TYPE_1__* regs; } ;
struct TYPE_2__ {int lock; } ;


 int EXTRA_REG_MAX ;
 int GFP_KERNEL ;
 int cpu_to_node (int) ;
 struct intel_shared_regs* kzalloc_node (int,int ,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct intel_shared_regs *allocate_shared_regs(int cpu)
{
 struct intel_shared_regs *regs;
 int i;

 regs = kzalloc_node(sizeof(struct intel_shared_regs),
       GFP_KERNEL, cpu_to_node(cpu));
 if (regs) {



  for (i = 0; i < EXTRA_REG_MAX; i++)
   raw_spin_lock_init(&regs->regs[i].lock);

  regs->core_id = -1;
 }
 return regs;
}
