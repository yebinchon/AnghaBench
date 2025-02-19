
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_private {scalar_t__ irq; scalar_t__ shr; scalar_t__ ring_ref; } ;


 int free_page (unsigned long) ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int kfree (struct tpm_private*) ;
 int unbind_from_irqhandler (scalar_t__,struct tpm_private*) ;

__attribute__((used)) static void ring_free(struct tpm_private *priv)
{
 if (!priv)
  return;

 if (priv->ring_ref)
  gnttab_end_foreign_access(priv->ring_ref, 0,
    (unsigned long)priv->shr);
 else
  free_page((unsigned long)priv->shr);

 if (priv->irq)
  unbind_from_irqhandler(priv->irq, priv);

 kfree(priv);
}
