
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int E500_TLB_SUPER_PERM_MASK ;
 int E500_TLB_USER_PERM_MASK ;
 int MAS3_ATTRIB_MASK ;

__attribute__((used)) static inline u32 e500_shadow_mas3_attrib(u32 mas3, int usermode)
{

 mas3 &= MAS3_ATTRIB_MASK;


 if (!usermode) {



  mas3 &= ~E500_TLB_USER_PERM_MASK;
  mas3 |= (mas3 & E500_TLB_SUPER_PERM_MASK) << 1;
 }
 mas3 |= E500_TLB_SUPER_PERM_MASK;

 return mas3;
}
