
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_claim_irq (int,int *,int *) ;

int txn_claim_irq(int irq)
{
 return cpu_claim_irq(irq, ((void*)0), ((void*)0)) ? -1 : irq;
}
