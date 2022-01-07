
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int fifo; scalar_t__ dev; int region_size; int ioport1; int irq; int input_fifo; int input_jog_dev; int input_key_dev; int input_work; } ;


 int flush_work (int *) ;
 int free_irq (int ,int ) ;
 int input_unregister_device (int ) ;
 int kfifo_free (int *) ;
 int misc_deregister (int *) ;
 int pci_dev_put (scalar_t__) ;
 int pci_disable_device (scalar_t__) ;
 int release_region (int ,int ) ;
 TYPE_1__ sonypi_device ;
 int sonypi_disable () ;
 int sonypi_irq ;
 int sonypi_misc_device ;
 int synchronize_irq (int ) ;
 scalar_t__ useinput ;

__attribute__((used)) static int sonypi_remove(struct platform_device *dev)
{
 sonypi_disable();

 synchronize_irq(sonypi_device.irq);
 flush_work(&sonypi_device.input_work);

 if (useinput) {
  input_unregister_device(sonypi_device.input_key_dev);
  input_unregister_device(sonypi_device.input_jog_dev);
  kfifo_free(&sonypi_device.input_fifo);
 }

 misc_deregister(&sonypi_misc_device);

 free_irq(sonypi_device.irq, sonypi_irq);
 release_region(sonypi_device.ioport1, sonypi_device.region_size);

 if (sonypi_device.dev) {
  pci_disable_device(sonypi_device.dev);
  pci_dev_put(sonypi_device.dev);
 }

 kfifo_free(&sonypi_device.fifo);

 return 0;
}
