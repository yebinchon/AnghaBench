
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int insn; int addr; } ;


 int __patch_text (int ,int ) ;

__attribute__((used)) static int __kprobes_remove_breakpoint(void *data)
{
 struct patch *p = data;
 __patch_text(p->addr, p->insn);
 return 0;
}
