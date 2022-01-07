
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int BUG_ON (int) ;
 scalar_t__ atomic64_add_return (scalar_t__,int *) ;
 scalar_t__ atomic64_read (int *) ;
 int irqs_disabled () ;
 scalar_t__ list_empty (int *) ;
 int virt_timer_current ;
 int virt_timer_elapsed ;
 int virt_timer_list ;

__attribute__((used)) static inline int virt_timer_forward(u64 elapsed)
{
 BUG_ON(!irqs_disabled());

 if (list_empty(&virt_timer_list))
  return 0;
 elapsed = atomic64_add_return(elapsed, &virt_timer_elapsed);
 return elapsed >= atomic64_read(&virt_timer_current);
}
