
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int num_chipselect; int transfer; int setup; int mode_bits; scalar_t__ bus_num; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct rb4xx_spi {int cs_wait; int ahb_clk; int base; int queue; int lock; void* spi_ctrl_fread; void* spi_ctrl_flash; struct spi_master* master; int ahb_freq; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CPLD_HZ ;
 int SPI_FLASH_HZ ;
 int SPI_TX_DUAL ;
 int clk_disable_unprepare (int ) ;
 int clk_get (int *,char*) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int dev_err (int *,char*) ;
 void* get_spi_ctrl (struct rb4xx_spi*,int ,char*) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rb4xx_spi*) ;
 int rb4xx_spi_setup ;
 int rb4xx_spi_transfer ;
 struct spi_master* spi_alloc_master (int *,int) ;
 struct rb4xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_register_master (struct spi_master*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rb4xx_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct rb4xx_spi *rbspi;
 struct resource *r;
 int err = 0;

 master = spi_alloc_master(&pdev->dev, sizeof(*rbspi));
 if (master == ((void*)0)) {
  dev_err(&pdev->dev, "no memory for spi_master\n");
  err = -ENOMEM;
  goto err_out;
 }

 master->bus_num = 0;
 master->num_chipselect = 3;
 master->mode_bits = SPI_TX_DUAL;
 master->setup = rb4xx_spi_setup;
 master->transfer = rb4xx_spi_transfer;

 rbspi = spi_master_get_devdata(master);

 rbspi->ahb_clk = clk_get(&pdev->dev, "ahb");
 if (IS_ERR(rbspi->ahb_clk)) {
  err = PTR_ERR(rbspi->ahb_clk);
  goto err_put_master;
 }

 err = clk_prepare_enable(rbspi->ahb_clk);
 if (err)
  goto err_clk_put;

 rbspi->ahb_freq = clk_get_rate(rbspi->ahb_clk);
 if (!rbspi->ahb_freq) {
  err = -EINVAL;
  goto err_clk_disable;
 }

 platform_set_drvdata(pdev, rbspi);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  err = -ENOENT;
  goto err_clk_disable;
 }

 rbspi->base = ioremap(r->start, r->end - r->start + 1);
 if (!rbspi->base) {
  err = -ENXIO;
  goto err_clk_disable;
 }

 rbspi->master = master;
 rbspi->spi_ctrl_flash = get_spi_ctrl(rbspi, SPI_FLASH_HZ, "FLASH");
 rbspi->spi_ctrl_fread = get_spi_ctrl(rbspi, SPI_CPLD_HZ, "CPLD");
 rbspi->cs_wait = -1;

 spin_lock_init(&rbspi->lock);
 INIT_LIST_HEAD(&rbspi->queue);

 err = spi_register_master(master);
 if (err) {
  dev_err(&pdev->dev, "failed to register SPI master\n");
  goto err_iounmap;
 }

 return 0;

err_iounmap:
 iounmap(rbspi->base);
err_clk_disable:
 clk_disable_unprepare(rbspi->ahb_clk);
err_clk_put:
 clk_put(rbspi->ahb_clk);
err_put_master:
 platform_set_drvdata(pdev, ((void*)0));
 spi_master_put(master);
err_out:
 return err;
}
