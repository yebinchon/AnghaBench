
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int ACPI_TAD_WAKE_DISABLED ;
 int acpi_tad_wake_set (struct device*,char*,int ,int ) ;

__attribute__((used)) static int acpi_tad_disable_timer(struct device *dev, u32 timer_id)
{
 return acpi_tad_wake_set(dev, "_STV", timer_id, ACPI_TAD_WAKE_DISABLED);
}
