
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vm86; } ;
struct task_struct {TYPE_1__ thread; } ;


 int arch_task_struct_size ;
 int fpu__copy (struct task_struct*,struct task_struct*) ;
 int memcpy (struct task_struct*,struct task_struct*,int ) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{
 memcpy(dst, src, arch_task_struct_size);




 return fpu__copy(dst, src);
}
