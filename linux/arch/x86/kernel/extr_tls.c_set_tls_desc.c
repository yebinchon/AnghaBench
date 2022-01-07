
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_desc {int dummy; } ;
struct thread_struct {struct desc_struct* tls_array; } ;
struct task_struct {struct thread_struct thread; } ;
struct desc_struct {int dummy; } ;
struct TYPE_2__ {struct thread_struct thread; } ;


 int GDT_ENTRY_TLS_MIN ;
 scalar_t__ LDT_empty (struct user_desc const*) ;
 scalar_t__ LDT_zero (struct user_desc const*) ;
 TYPE_1__* current ;
 int fill_ldt (struct desc_struct*,struct user_desc const*) ;
 int get_cpu () ;
 int load_TLS (struct thread_struct*,int) ;
 int memset (struct desc_struct*,int ,int) ;
 int put_cpu () ;

__attribute__((used)) static void set_tls_desc(struct task_struct *p, int idx,
    const struct user_desc *info, int n)
{
 struct thread_struct *t = &p->thread;
 struct desc_struct *desc = &t->tls_array[idx - GDT_ENTRY_TLS_MIN];
 int cpu;




 cpu = get_cpu();

 while (n-- > 0) {
  if (LDT_empty(info) || LDT_zero(info))
   memset(desc, 0, sizeof(*desc));
  else
   fill_ldt(desc, info);
  ++info;
  ++desc;
 }

 if (t == &current->thread)
  load_TLS(t, cpu);

 put_cpu();
}
