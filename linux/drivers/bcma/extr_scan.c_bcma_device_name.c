
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_device_id_name {scalar_t__ id; char const* name; } ;
struct bcma_device_id {int manuf; scalar_t__ id; } ;


 int ARRAY_SIZE (struct bcma_device_id_name*) ;



 struct bcma_device_id_name* bcma_arm_device_names ;
 struct bcma_device_id_name* bcma_bcm_device_names ;
 struct bcma_device_id_name* bcma_mips_device_names ;

__attribute__((used)) static const char *bcma_device_name(const struct bcma_device_id *id)
{
 const struct bcma_device_id_name *names;
 int size, i;


 switch (id->manuf) {
 case 130:
  names = bcma_arm_device_names;
  size = ARRAY_SIZE(bcma_arm_device_names);
  break;
 case 129:
  names = bcma_bcm_device_names;
  size = ARRAY_SIZE(bcma_bcm_device_names);
  break;
 case 128:
  names = bcma_mips_device_names;
  size = ARRAY_SIZE(bcma_mips_device_names);
  break;
 default:
  return "UNKNOWN";
 }

 for (i = 0; i < size; i++) {
  if (names[i].id == id->id)
   return names[i].name;
 }

 return "UNKNOWN";
}
