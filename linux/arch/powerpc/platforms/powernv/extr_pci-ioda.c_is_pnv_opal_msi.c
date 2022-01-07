
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {scalar_t__ irq_eoi; } ;


 scalar_t__ pnv_ioda2_msi_eoi ;

bool is_pnv_opal_msi(struct irq_chip *chip)
{
 return chip->irq_eoi == pnv_ioda2_msi_eoi;
}
