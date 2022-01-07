
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned long twl4030_vsel_to_uv(const u8 vsel)
{
 return (((vsel * 125) + 6000)) * 100;
}
