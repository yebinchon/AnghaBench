
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct d0_locking_features {int supported_features; } ;


 int MBR_ENABLED_MASK ;

__attribute__((used)) static bool check_mbrenabled(const void *data)
{
 const struct d0_locking_features *lfeat = data;
 u8 sup_feat = lfeat->supported_features;

 return !!(sup_feat & MBR_ENABLED_MASK);
}
