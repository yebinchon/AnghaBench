
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; scalar_t__ start; scalar_t__ control; } ;
struct TYPE_4__ {TYPE_1__ per_user; } ;
struct task_struct {TYPE_2__ thread; } ;
struct per_struct_kernel {int ending_addr; int starting_addr; int cr9; } ;
typedef scalar_t__ addr_t ;


 scalar_t__ PER_CONTROL_MASK ;
 scalar_t__ PER_EVENT_MASK ;

__attribute__((used)) static inline void __poke_user_per(struct task_struct *child,
       addr_t addr, addr_t data)
{
 struct per_struct_kernel *dummy = ((void*)0);
 if (addr == (addr_t) &dummy->cr9)

  child->thread.per_user.control =
   data & (PER_EVENT_MASK | PER_CONTROL_MASK);
 else if (addr == (addr_t) &dummy->starting_addr)

  child->thread.per_user.start = data;
 else if (addr == (addr_t) &dummy->ending_addr)

  child->thread.per_user.end = data;
}
