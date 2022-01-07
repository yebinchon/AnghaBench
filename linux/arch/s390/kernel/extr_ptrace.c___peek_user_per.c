
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long address; scalar_t__ paid; scalar_t__ cause; } ;
struct TYPE_4__ {unsigned long control; unsigned long start; unsigned long end; } ;
struct TYPE_6__ {TYPE_2__ per_event; TYPE_1__ per_user; } ;
struct task_struct {TYPE_3__ thread; } ;
struct per_struct_kernel {int access_id; int address; int perc_atmid; int ending_addr; int starting_addr; int bits; int cr11; int cr10; int cr9; } ;
typedef scalar_t__ addr_t ;


 int BITS_PER_LONG ;
 unsigned long PER_EVENT_IFETCH ;
 int TIF_SINGLE_STEP ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static inline unsigned long __peek_user_per(struct task_struct *child,
         addr_t addr)
{
 struct per_struct_kernel *dummy = ((void*)0);

 if (addr == (addr_t) &dummy->cr9)

  return test_thread_flag(TIF_SINGLE_STEP) ?
   PER_EVENT_IFETCH : child->thread.per_user.control;
 else if (addr == (addr_t) &dummy->cr10)

  return test_thread_flag(TIF_SINGLE_STEP) ?
   0 : child->thread.per_user.start;
 else if (addr == (addr_t) &dummy->cr11)

  return test_thread_flag(TIF_SINGLE_STEP) ?
   -1UL : child->thread.per_user.end;
 else if (addr == (addr_t) &dummy->bits)

  return test_thread_flag(TIF_SINGLE_STEP) ?
   (1UL << (BITS_PER_LONG - 1)) : 0;
 else if (addr == (addr_t) &dummy->starting_addr)

  return child->thread.per_user.start;
 else if (addr == (addr_t) &dummy->ending_addr)

  return child->thread.per_user.end;
 else if (addr == (addr_t) &dummy->perc_atmid)

  return (unsigned long)
   child->thread.per_event.cause << (BITS_PER_LONG - 16);
 else if (addr == (addr_t) &dummy->address)

  return child->thread.per_event.address;
 else if (addr == (addr_t) &dummy->access_id)

  return (unsigned long)
   child->thread.per_event.paid << (BITS_PER_LONG - 8);
 return 0;
}
