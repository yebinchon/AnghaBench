
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_5__ {int dma_irqs_enabled; int * regs; int bcom_rx_task; TYPE_4__* dev; int bcom_tx_task; int irq; int lock; scalar_t__ regs_phys; } ;


 int BCOM_INITIATOR_SCLPC ;
 int BCOM_IPR_SCLPC ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int LPBFIFO_REG_ENABLE ;
 scalar_t__ LPBFIFO_REG_FIFO_DATA ;
 int bcom_gen_bd_rx_init (int,scalar_t__,int ,int ,int) ;
 int bcom_gen_bd_rx_release (int ) ;
 int bcom_gen_bd_tx_init (int,scalar_t__,int ,int ) ;
 int bcom_get_task_irq (int ) ;
 int dev_err (TYPE_4__*,char*) ;
 int free_irq (int ,TYPE_1__*) ;
 int iounmap (int *) ;
 int irq_of_parse_and_map (int ,int ) ;
 TYPE_1__ lpbfifo ;
 int mpc52xx_lpbfifo_bcom_irq ;
 int mpc52xx_lpbfifo_irq ;
 scalar_t__ of_address_to_resource (int ,int ,struct resource*) ;
 int * of_iomap (int ,int ) ;
 int out_be32 (int *,int) ;
 int request_irq (int ,int ,int ,char*,TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mpc52xx_lpbfifo_probe(struct platform_device *op)
{
 struct resource res;
 int rc = -ENOMEM;

 if (lpbfifo.dev != ((void*)0))
  return -ENOSPC;

 lpbfifo.irq = irq_of_parse_and_map(op->dev.of_node, 0);
 if (!lpbfifo.irq)
  return -ENODEV;

 if (of_address_to_resource(op->dev.of_node, 0, &res))
  return -ENODEV;
 lpbfifo.regs_phys = res.start;
 lpbfifo.regs = of_iomap(op->dev.of_node, 0);
 if (!lpbfifo.regs)
  return -ENOMEM;

 spin_lock_init(&lpbfifo.lock);


 out_be32(lpbfifo.regs + LPBFIFO_REG_ENABLE, 0x01010000);


 rc = request_irq(lpbfifo.irq, mpc52xx_lpbfifo_irq, 0,
    "mpc52xx-lpbfifo", &lpbfifo);
 if (rc)
  goto err_irq;


 lpbfifo.bcom_rx_task =
  bcom_gen_bd_rx_init(2, res.start + LPBFIFO_REG_FIFO_DATA,
        BCOM_INITIATOR_SCLPC, BCOM_IPR_SCLPC,
        16*1024*1024);
 if (!lpbfifo.bcom_rx_task)
  goto err_bcom_rx;

 rc = request_irq(bcom_get_task_irq(lpbfifo.bcom_rx_task),
    mpc52xx_lpbfifo_bcom_irq, 0,
    "mpc52xx-lpbfifo-rx", &lpbfifo);
 if (rc)
  goto err_bcom_rx_irq;

 lpbfifo.dma_irqs_enabled = 1;


 lpbfifo.bcom_tx_task =
  bcom_gen_bd_tx_init(2, res.start + LPBFIFO_REG_FIFO_DATA,
        BCOM_INITIATOR_SCLPC, BCOM_IPR_SCLPC);
 if (!lpbfifo.bcom_tx_task)
  goto err_bcom_tx;

 lpbfifo.dev = &op->dev;
 return 0;

 err_bcom_tx:
 free_irq(bcom_get_task_irq(lpbfifo.bcom_rx_task), &lpbfifo);
 err_bcom_rx_irq:
 bcom_gen_bd_rx_release(lpbfifo.bcom_rx_task);
 err_bcom_rx:
 err_irq:
 iounmap(lpbfifo.regs);
 lpbfifo.regs = ((void*)0);

 dev_err(&op->dev, "mpc52xx_lpbfifo_probe() failed\n");
 return -ENODEV;
}
