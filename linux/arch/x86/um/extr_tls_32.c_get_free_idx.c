
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tls_array; } ;
struct thread_struct {TYPE_2__ arch; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_3__ {int present; } ;


 int ESRCH ;
 int GDT_ENTRY_TLS_ENTRIES ;
 int GDT_ENTRY_TLS_MIN ;

__attribute__((used)) static int get_free_idx(struct task_struct* task)
{
 struct thread_struct *t = &task->thread;
 int idx;

 if (!t->arch.tls_array)
  return GDT_ENTRY_TLS_MIN;

 for (idx = 0; idx < GDT_ENTRY_TLS_ENTRIES; idx++)
  if (!t->arch.tls_array[idx].present)
   return idx + GDT_ENTRY_TLS_MIN;
 return -ESRCH;
}
