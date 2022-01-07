
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_DBG_READ (int ,int ,int ,int) ;
 int c0 ;

__attribute__((used)) static int get_num_brp_resources(void)
{
 u32 didr;
 ARM_DBG_READ(c0, c0, 0, didr);
 return ((didr >> 24) & 0xf) + 1;
}
