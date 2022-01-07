
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct arch_uprobe {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* emulate ) (struct arch_uprobe*,struct pt_regs*) ;} ;


 int stub1 (struct arch_uprobe*,struct pt_regs*) ;

__attribute__((used)) static bool __skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 if (auprobe->ops->emulate)
  return auprobe->ops->emulate(auprobe, regs);
 return 0;
}
