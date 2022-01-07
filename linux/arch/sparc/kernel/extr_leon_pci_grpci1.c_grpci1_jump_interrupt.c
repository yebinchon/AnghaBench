
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grpci1_priv {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t grpci1_jump_interrupt(int irq, void *arg)
{
 struct grpci1_priv *priv = arg;
 dev_err(priv->dev, "Jump IRQ happened\n");
 return IRQ_NONE;
}
