
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ht_cfg_space ;

__attribute__((used)) static inline u32 READCFG32(u32 addr)
{
 return *(u32 *)(ht_cfg_space + (addr&~3));
}
