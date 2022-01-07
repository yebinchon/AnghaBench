
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {int default_trigger; int brightness_get; int brightness_set; int name; } ;
struct dbg_led {TYPE_1__ cdev; int mask; } ;
struct TYPE_8__ {int trigger; int name; } ;
struct TYPE_7__ {int leds; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int BIT (int) ;
 int ENODEV ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dbg_led_get ;
 int dbg_led_set ;
 TYPE_4__* dbg_leds ;
 TYPE_2__* fpga ;
 TYPE_2__* ioremap (int ,int ) ;
 int kfree (struct dbg_led*) ;
 struct dbg_led* kzalloc (int,int ) ;
 scalar_t__ led_classdev_register (int *,TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int writew_relaxed (int,int *) ;

__attribute__((used)) static int fpga_probe(struct platform_device *pdev)
{
 struct resource *iomem;
 int i;

 iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!iomem)
  return -ENODEV;

 fpga = ioremap(iomem->start, resource_size(iomem));
 writew_relaxed(0xff, &fpga->leds);

 for (i = 0; i < ARRAY_SIZE(dbg_leds); i++) {
  struct dbg_led *led;

  led = kzalloc(sizeof(*led), GFP_KERNEL);
  if (!led)
   break;

  led->cdev.name = dbg_leds[i].name;
  led->cdev.brightness_set = dbg_led_set;
  led->cdev.brightness_get = dbg_led_get;
  led->cdev.default_trigger = dbg_leds[i].trigger;
  led->mask = BIT(i);

  if (led_classdev_register(((void*)0), &led->cdev) < 0) {
   kfree(led);
   break;
  }
 }

 return 0;
}
