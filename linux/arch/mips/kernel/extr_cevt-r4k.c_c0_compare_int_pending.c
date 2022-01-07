
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CAUSEB_IP ;
 unsigned long cp0_compare_irq_shift ;
 unsigned long read_c0_cause () ;

__attribute__((used)) static int c0_compare_int_pending(void)
{

 return (read_c0_cause() >> cp0_compare_irq_shift) & (1ul << CAUSEB_IP);
}
