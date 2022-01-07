
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int acpi_tad_wake_write (struct device*,char const*,char*,int ,int ) ;
 int policy_specval ;

__attribute__((used)) static int acpi_tad_policy_write(struct device *dev, const char *buf,
     u32 timer_id)
{
 return acpi_tad_wake_write(dev, buf, "_STP", timer_id, policy_specval);
}
