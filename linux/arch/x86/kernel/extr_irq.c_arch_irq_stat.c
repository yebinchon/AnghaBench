
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int atomic_read (int *) ;
 int irq_err_count ;

u64 arch_irq_stat(void)
{
 u64 sum = atomic_read(&irq_err_count);
 return sum;
}
