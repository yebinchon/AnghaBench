
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int leds; } ;


 TYPE_1__* fpga ;
 int fpga_led_state ;
 int writew_relaxed (int ,int *) ;

__attribute__((used)) static int fpga_resume_noirq(struct device *dev)
{
 writew_relaxed(~fpga_led_state, &fpga->leds);
 return 0;
}
