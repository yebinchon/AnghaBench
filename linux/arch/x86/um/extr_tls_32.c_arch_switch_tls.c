
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;


 int O_FORCE ;
 int host_supports_tls ;
 scalar_t__ likely (int ) ;
 int load_TLS (int ,struct task_struct*) ;

int arch_switch_tls(struct task_struct *to)
{
 if (!host_supports_tls)
  return 0;






 if (likely(to->mm))
  return load_TLS(O_FORCE, to);

 return 0;
}
