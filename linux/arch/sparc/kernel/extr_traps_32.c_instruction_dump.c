
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void instruction_dump(unsigned long *pc)
{
 int i;

 if((((unsigned long) pc) & 3))
                return;

 for(i = -3; i < 6; i++)
  printk("%c%08lx%c",i?' ':'<',pc[i],i?' ':'>');
 printk("\n");
}
