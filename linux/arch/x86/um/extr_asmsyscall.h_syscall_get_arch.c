
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int AUDIT_ARCH_I386 ;
 int AUDIT_ARCH_X86_64 ;

__attribute__((used)) static inline int syscall_get_arch(struct task_struct *task)
{



 return AUDIT_ARCH_X86_64;

}
