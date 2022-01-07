
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_11__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct lpbfifo_data {int dummy; } ;
struct TYPE_13__ {int enable; } ;
struct TYPE_12__ {int * chan; int irq; TYPE_7__* regs; int regs_size; int regs_phys; int lock; } ;


 int DRV_NAME ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int MPC512X_SCLPC_FIFO_RESET ;
 int MPC512X_SCLPC_RESET ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 TYPE_7__* devm_ioremap (TYPE_1__*,int ,int ) ;
 int devm_request_mem_region (TYPE_1__*,int ,int ,int ) ;
 int dma_release_channel (int *) ;
 int * dma_request_slave_channel (TYPE_1__*,char*) ;
 scalar_t__ get_cs_ranges (TYPE_1__*) ;
 int irq_dispose_mapping (int ) ;
 int irq_of_parse_and_map (int ,int ) ;
 TYPE_2__ lpbfifo ;
 int memset (TYPE_2__*,int ,int) ;
 int mpc512x_lpbfifo_irq ;
 scalar_t__ of_address_to_resource (int ,int ,struct resource*) ;
 int out_be32 (int *,int) ;
 scalar_t__ request_irq (int ,int ,int ,int ,TYPE_1__*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mpc512x_lpbfifo_probe(struct platform_device *pdev)
{
 struct resource r;
 int ret = 0;

 memset(&lpbfifo, 0, sizeof(struct lpbfifo_data));
 spin_lock_init(&lpbfifo.lock);

 lpbfifo.chan = dma_request_slave_channel(&pdev->dev, "rx-tx");
 if (lpbfifo.chan == ((void*)0))
  return -EPROBE_DEFER;

 if (of_address_to_resource(pdev->dev.of_node, 0, &r) != 0) {
  dev_err(&pdev->dev, "bad 'reg' in 'sclpc' device tree node\n");
  ret = -ENODEV;
  goto err0;
 }

 lpbfifo.regs_phys = r.start;
 lpbfifo.regs_size = resource_size(&r);

 if (!devm_request_mem_region(&pdev->dev, lpbfifo.regs_phys,
     lpbfifo.regs_size, DRV_NAME)) {
  dev_err(&pdev->dev, "unable to request region\n");
  ret = -EBUSY;
  goto err0;
 }

 lpbfifo.regs = devm_ioremap(&pdev->dev,
     lpbfifo.regs_phys, lpbfifo.regs_size);
 if (!lpbfifo.regs) {
  dev_err(&pdev->dev, "mapping registers failed\n");
  ret = -ENOMEM;
  goto err0;
 }

 out_be32(&lpbfifo.regs->enable,
    MPC512X_SCLPC_RESET | MPC512X_SCLPC_FIFO_RESET);

 if (get_cs_ranges(&pdev->dev) != 0) {
  dev_err(&pdev->dev, "bad '/localbus' device tree node\n");
  ret = -ENODEV;
  goto err0;
 }

 lpbfifo.irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
 if (!lpbfifo.irq) {
  dev_err(&pdev->dev, "mapping irq failed\n");
  ret = -ENODEV;
  goto err0;
 }

 if (request_irq(lpbfifo.irq, mpc512x_lpbfifo_irq, 0,
      DRV_NAME, &pdev->dev) != 0) {
  dev_err(&pdev->dev, "requesting irq failed\n");
  ret = -ENODEV;
  goto err1;
 }

 dev_info(&pdev->dev, "probe succeeded\n");
 return 0;

 err1:
 irq_dispose_mapping(lpbfifo.irq);
 err0:
 dma_release_channel(lpbfifo.chan);
 return ret;
}
