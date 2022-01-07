
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static void get_acpi_device(void *dev)
{
 if (dev)
  get_device(&((struct acpi_device *)dev)->dev);
}
