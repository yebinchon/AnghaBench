
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int acpi_tad_wake_read (struct device*,char*,char*,int ,int ) ;
 int policy_specval ;

__attribute__((used)) static ssize_t acpi_tad_policy_read(struct device *dev, char *buf, u32 timer_id)
{
 return acpi_tad_wake_read(dev, buf, "_TIP", timer_id, policy_specval);
}
