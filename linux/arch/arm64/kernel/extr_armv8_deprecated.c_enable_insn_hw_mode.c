
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_emulation {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_hw_mode ) (int) ;} ;


 int stub1 (int) ;

__attribute__((used)) static void enable_insn_hw_mode(void *data)
{
 struct insn_emulation *insn = (struct insn_emulation *)data;
 if (insn->ops->set_hw_mode)
  insn->ops->set_hw_mode(1);
}
