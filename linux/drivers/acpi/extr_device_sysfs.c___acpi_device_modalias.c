
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_compatible; } ;
struct TYPE_4__ {int ids; } ;
struct acpi_device {TYPE_1__ data; TYPE_2__ pnp; } ;


 int ENODEV ;
 int create_of_modalias (struct acpi_device*,char*,int) ;
 int create_pnp_modalias (struct acpi_device*,char*,int) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int __acpi_device_modalias(struct acpi_device *adev, char *buf, int size)
{
 int len, count;

 if (!adev)
  return -ENODEV;

 if (list_empty(&adev->pnp.ids))
  return 0;

 len = create_pnp_modalias(adev, buf, size - 1);
 if (len < 0) {
  return len;
 } else if (len > 0) {
  buf[len++] = '\n';
  size -= len;
 }
 if (!adev->data.of_compatible)
  return len;

 count = create_of_modalias(adev, buf + len, size - 1);
 if (count < 0) {
  return count;
 } else if (count > 0) {
  len += count;
  buf[len++] = '\n';
 }

 return len;
}
