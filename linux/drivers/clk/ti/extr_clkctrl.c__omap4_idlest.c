
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP4_IDLEST_MASK ;
 int OMAP4_IDLEST_SHIFT ;

__attribute__((used)) static u32 _omap4_idlest(u32 val)
{
 val &= OMAP4_IDLEST_MASK;
 val >>= OMAP4_IDLEST_SHIFT;

 return val;
}
