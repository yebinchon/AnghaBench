
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int acpi_tad_wake_write (struct device*,char const*,char*,int ,int ) ;
 int alarm_specval ;

__attribute__((used)) static int acpi_tad_alarm_write(struct device *dev, const char *buf,
    u32 timer_id)
{
 return acpi_tad_wake_write(dev, buf, "_STV", timer_id, alarm_specval);
}
