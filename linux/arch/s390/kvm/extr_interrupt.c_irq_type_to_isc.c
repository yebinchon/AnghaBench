
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PEND_IO_ISC_0 ;

__attribute__((used)) static inline int irq_type_to_isc(unsigned long irq_type)
{
 return IRQ_PEND_IO_ISC_0 - irq_type;
}
