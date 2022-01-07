
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_info (char*) ;

__attribute__((used)) static int powernow_acpi_init(void)
{
 pr_info("no support for ACPI processor found - please recompile your kernel with ACPI processor\n");
 return -EINVAL;
}
