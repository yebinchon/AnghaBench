
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_fan_fps {int speed; } ;



__attribute__((used)) static int acpi_fan_speed_cmp(const void *a, const void *b)
{
 const struct acpi_fan_fps *fps1 = a;
 const struct acpi_fan_fps *fps2 = b;
 return fps1->speed - fps2->speed;
}
