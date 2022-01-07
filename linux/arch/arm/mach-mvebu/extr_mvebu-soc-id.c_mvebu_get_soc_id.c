
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENODEV ;
 scalar_t__ is_id_valid ;
 int soc_dev_id ;
 int soc_rev ;

int mvebu_get_soc_id(u32 *dev, u32 *rev)
{
 if (is_id_valid) {
  *dev = soc_dev_id;
  *rev = soc_rev;
  return 0;
 } else
  return -ENODEV;
}
