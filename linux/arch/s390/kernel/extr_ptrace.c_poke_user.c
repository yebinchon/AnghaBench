
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int orig_gpr2; int acrs; } ;
struct user {TYPE_1__ regs; } ;
struct task_struct {int dummy; } ;
typedef int addr_t ;


 int EIO ;
 int __ADDR_MASK ;
 int __poke_user (struct task_struct*,int,int) ;

__attribute__((used)) static int poke_user(struct task_struct *child, addr_t addr, addr_t data)
{
 addr_t mask;





 mask = __ADDR_MASK;
 if (addr >= (addr_t) &((struct user *) ((void*)0))->regs.acrs &&
     addr < (addr_t) &((struct user *) ((void*)0))->regs.orig_gpr2)
  mask = 3;
 if ((addr & mask) || addr > sizeof(struct user) - __ADDR_MASK)
  return -EIO;

 return __poke_user(child, addr, data);
}
