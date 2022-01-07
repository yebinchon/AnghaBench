
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; int * regs; int irq; int bcom_rx_task; int bcom_tx_task; } ;


 int LPBFIFO_REG_ENABLE ;
 int bcom_gen_bd_rx_release (int ) ;
 int bcom_gen_bd_tx_release (int ) ;
 int bcom_get_task_irq (int ) ;
 int free_irq (int ,TYPE_1__*) ;
 int iounmap (int *) ;
 TYPE_1__ lpbfifo ;
 int out_be32 (int *,int) ;

__attribute__((used)) static int mpc52xx_lpbfifo_remove(struct platform_device *op)
{
 if (lpbfifo.dev != &op->dev)
  return 0;


 out_be32(lpbfifo.regs + LPBFIFO_REG_ENABLE, 0x01010000);


 free_irq(bcom_get_task_irq(lpbfifo.bcom_tx_task), &lpbfifo);
 bcom_gen_bd_tx_release(lpbfifo.bcom_tx_task);


 free_irq(bcom_get_task_irq(lpbfifo.bcom_rx_task), &lpbfifo);
 bcom_gen_bd_rx_release(lpbfifo.bcom_rx_task);

 free_irq(lpbfifo.irq, &lpbfifo);
 iounmap(lpbfifo.regs);
 lpbfifo.regs = ((void*)0);
 lpbfifo.dev = ((void*)0);

 return 0;
}
