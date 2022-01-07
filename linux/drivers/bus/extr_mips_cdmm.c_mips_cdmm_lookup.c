
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_device_id {scalar_t__ type; } ;
struct mips_cdmm_device {scalar_t__ type; } ;



__attribute__((used)) static const struct mips_cdmm_device_id *
mips_cdmm_lookup(const struct mips_cdmm_device_id *table,
   struct mips_cdmm_device *dev)
{
 int ret = 0;

 for (; table->type; ++table) {
  ret = (dev->type == table->type);
  if (ret)
   break;
 }

 return ret ? table : ((void*)0);
}
