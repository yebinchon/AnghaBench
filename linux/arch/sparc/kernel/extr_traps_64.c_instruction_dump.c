
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void instruction_dump(unsigned int *pc)
{
 int i;

 if ((((unsigned long) pc) & 3))
  return;

 printk("Instruction DUMP:");
 for (i = -3; i < 6; i++)
  printk("%c%08x%c",i?' ':'<',pc[i],i?' ':'>');
 printk("\n");
}
