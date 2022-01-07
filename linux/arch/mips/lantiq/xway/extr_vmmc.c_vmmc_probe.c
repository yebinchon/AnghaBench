
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
typedef int dma_addr_t ;


 int CP1_SIZE ;
 scalar_t__ CPHYSADDR (int ) ;
 int GFP_KERNEL ;
 int OF_GPIO_ACTIVE_LOW ;
 void* cp1_base ;
 int dev_info (TYPE_1__*,char*,int,...) ;
 int dma_alloc_coherent (TYPE_1__*,int,int *,int ) ;
 int gpio_direction_output (int,int) ;
 scalar_t__ gpio_request (int,char*) ;
 int of_get_gpio_flags (int ,int,int*) ;
 int of_gpio_count (int ) ;

__attribute__((used)) static int vmmc_probe(struct platform_device *pdev)
{

 int gpio_count;
 dma_addr_t dma;

 cp1_base =
  (void *) CPHYSADDR(dma_alloc_coherent(&pdev->dev, (1 << 20),
          &dma, GFP_KERNEL));

 gpio_count = of_gpio_count(pdev->dev.of_node);
 while (gpio_count > 0) {
  enum of_gpio_flags flags;
  int gpio = of_get_gpio_flags(pdev->dev.of_node,
          --gpio_count, &flags);
  if (gpio_request(gpio, "vmmc-relay"))
   continue;
  dev_info(&pdev->dev, "requested GPIO %d\n", gpio);
  gpio_direction_output(gpio,
          (flags & OF_GPIO_ACTIVE_LOW) ? (0) : (1));
 }

 dev_info(&pdev->dev, "reserved %dMB at 0x%p", (1 << 20) >> 20, cp1_base);

 return 0;
}
