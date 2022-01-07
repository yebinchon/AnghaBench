
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va; } ;


 TYPE_1__* irq_banks ;
 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline unsigned int irq_bank_readl(int bank, int offset)
{
 return readl_relaxed(irq_banks[bank].va + offset);
}
