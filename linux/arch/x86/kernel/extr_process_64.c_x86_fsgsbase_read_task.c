
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tls_array; } ;
struct task_struct {TYPE_3__* mm; TYPE_1__ thread; } ;
struct ldt_struct {unsigned short nr_entries; int * entries; } ;
struct TYPE_5__ {int lock; struct ldt_struct* ldt; } ;
struct TYPE_6__ {TYPE_2__ context; } ;


 unsigned short GDT_ENTRIES ;
 unsigned short GDT_ENTRY_TLS_MAX ;
 unsigned short GDT_ENTRY_TLS_MIN ;
 unsigned short SEGMENT_TI_MASK ;
 unsigned long get_desc_base (int *) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long x86_fsgsbase_read_task(struct task_struct *task,
         unsigned short selector)
{
 unsigned short idx = selector >> 3;
 unsigned long base;

 if (likely((selector & SEGMENT_TI_MASK) == 0)) {
  if (unlikely(idx >= GDT_ENTRIES))
   return 0;





  if (idx < GDT_ENTRY_TLS_MIN || idx > GDT_ENTRY_TLS_MAX)
   return 0;

  idx -= GDT_ENTRY_TLS_MIN;
  base = get_desc_base(&task->thread.tls_array[idx]);
 } else {
  base = 0;

 }

 return base;
}
