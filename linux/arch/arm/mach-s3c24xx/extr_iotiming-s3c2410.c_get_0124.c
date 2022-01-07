
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_0124(unsigned long hclk_tns,
        unsigned long val)
{
 val &= 3;
 return hclk_tns * ((val == 3) ? 4 : val);
}
