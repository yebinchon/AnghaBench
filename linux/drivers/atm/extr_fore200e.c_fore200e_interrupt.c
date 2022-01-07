
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fore200e {TYPE_1__* bus; int rx_tasklet; int tx_tasklet; TYPE_2__* atm_dev; } ;
struct atm_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {scalar_t__ (* irq_check ) (struct fore200e*) ;int (* irq_ack ) (struct fore200e*) ;} ;


 int DPRINTK (int,char*,int ) ;
 struct fore200e* FORE200E_DEV (struct atm_dev*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int fore200e_irq (struct fore200e*) ;
 scalar_t__ stub1 (struct fore200e*) ;
 int stub2 (struct fore200e*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
fore200e_interrupt(int irq, void* dev)
{
    struct fore200e* fore200e = FORE200E_DEV((struct atm_dev*)dev);

    if (fore200e->bus->irq_check(fore200e) == 0) {

 DPRINTK(3, "interrupt NOT triggered by device %d\n", fore200e->atm_dev->number);
 return IRQ_NONE;
    }
    DPRINTK(3, "interrupt triggered by device %d\n", fore200e->atm_dev->number);





    fore200e_irq(fore200e);


    fore200e->bus->irq_ack(fore200e);
    return IRQ_HANDLED;
}
