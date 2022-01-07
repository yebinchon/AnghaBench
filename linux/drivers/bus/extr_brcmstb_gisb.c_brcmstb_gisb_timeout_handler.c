
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int brcmstb_gisb_arb_decode_addr (void*,char*) ;

__attribute__((used)) static irqreturn_t brcmstb_gisb_timeout_handler(int irq, void *dev_id)
{
 brcmstb_gisb_arb_decode_addr(dev_id, "timeout");

 return IRQ_HANDLED;
}
