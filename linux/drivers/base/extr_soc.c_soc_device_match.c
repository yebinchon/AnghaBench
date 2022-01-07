
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_device_attribute {scalar_t__ soc_id; scalar_t__ revision; scalar_t__ family; scalar_t__ machine; } ;


 int bus_for_each_dev (int *,int *,void*,int ) ;
 scalar_t__ early_soc_dev_attr ;
 int soc_bus_type ;
 int soc_device_match_attr (scalar_t__,struct soc_device_attribute const*) ;
 int soc_device_match_one ;

const struct soc_device_attribute *soc_device_match(
 const struct soc_device_attribute *matches)
{
 int ret = 0;

 if (!matches)
  return ((void*)0);

 while (!ret) {
  if (!(matches->machine || matches->family ||
        matches->revision || matches->soc_id))
   break;
  ret = bus_for_each_dev(&soc_bus_type, ((void*)0), (void *)matches,
           soc_device_match_one);
  if (ret < 0 && early_soc_dev_attr)
   ret = soc_device_match_attr(early_soc_dev_attr,
          matches);
  if (ret < 0)
   return ((void*)0);
  if (!ret)
   matches++;
  else
   return matches;
 }
 return ((void*)0);
}
