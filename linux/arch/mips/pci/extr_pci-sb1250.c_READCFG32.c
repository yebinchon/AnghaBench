
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ cfg_space ;

__attribute__((used)) static inline u32 READCFG32(u32 addr)
{
 return *(u32 *) (cfg_space + (addr & ~3));
}
