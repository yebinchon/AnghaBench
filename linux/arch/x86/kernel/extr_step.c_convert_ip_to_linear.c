
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* mm; } ;
struct pt_regs {unsigned long ip; unsigned long cs; } ;
struct desc_struct {int d; } ;
struct TYPE_5__ {int lock; TYPE_1__* ldt; } ;
struct TYPE_6__ {TYPE_2__ context; } ;
struct TYPE_4__ {unsigned long nr_entries; struct desc_struct* entries; } ;


 unsigned long SEGMENT_LDT ;
 unsigned long SEGMENT_TI_MASK ;
 unsigned long get_desc_base (struct desc_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

unsigned long convert_ip_to_linear(struct task_struct *child, struct pt_regs *regs)
{
 unsigned long addr, seg;

 addr = regs->ip;
 seg = regs->cs;
 if (v8086_mode(regs)) {
  addr = (addr & 0xffff) + (seg << 4);
  return addr;
 }
 return addr;
}
