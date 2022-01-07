
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rail_alignment {scalar_t__ offset_uv; scalar_t__ step_uv; } ;
struct device {int of_node; } ;


 scalar_t__ of_property_read_u32 (int ,char*,scalar_t__*) ;

__attribute__((used)) static void get_alignment_from_dt(struct device *dev,
      struct rail_alignment *align)
{
 if (of_property_read_u32(dev->of_node,
     "nvidia,pwm-voltage-step-microvolts",
     &align->step_uv))
  align->step_uv = 0;

 if (of_property_read_u32(dev->of_node,
     "nvidia,pwm-min-microvolts",
     &align->offset_uv))
  align->offset_uv = 0;
}
