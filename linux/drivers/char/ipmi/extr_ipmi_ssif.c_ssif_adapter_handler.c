
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_addr_info {int adapter_name; int binfo; int added_client; } ;
struct device {int * type; } ;


 int i2c_adapter_type ;
 int i2c_new_device (int ,int *) ;
 int to_i2c_adapter (struct device*) ;

__attribute__((used)) static int ssif_adapter_handler(struct device *adev, void *opaque)
{
 struct ssif_addr_info *addr_info = opaque;

 if (adev->type != &i2c_adapter_type)
  return 0;

 addr_info->added_client = i2c_new_device(to_i2c_adapter(adev),
       &addr_info->binfo);

 if (!addr_info->adapter_name)
  return 1;
 return 0;
}
