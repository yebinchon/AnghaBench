
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics {int dummy; } ;


 int ics_rtas_mask_real_irq (unsigned long) ;

__attribute__((used)) static void ics_rtas_mask_unknown(struct ics *ics, unsigned long vec)
{
 ics_rtas_mask_real_irq(vec);
}
