
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int dummy; } ;
typedef int irq_hw_number_t ;



__attribute__((used)) static inline int mpic_map_error_int(struct mpic *mpic, unsigned int virq, irq_hw_number_t hw)
{
 return 0;
}
