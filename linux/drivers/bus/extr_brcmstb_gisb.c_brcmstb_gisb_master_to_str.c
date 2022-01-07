
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_gisb_arb_device {int valid_mask; char const** master_names; } ;


 int ffs (int) ;
 int hweight_long (int) ;

__attribute__((used)) static const char *
brcmstb_gisb_master_to_str(struct brcmstb_gisb_arb_device *gdev,
      u32 masters)
{
 u32 mask = gdev->valid_mask & masters;

 if (hweight_long(mask) != 1)
  return ((void*)0);

 return gdev->master_names[ffs(mask) - 1];
}
