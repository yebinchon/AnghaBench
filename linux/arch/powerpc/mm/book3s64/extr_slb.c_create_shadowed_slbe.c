
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum slb_index { ____Placeholder_slb_index } slb_index ;


 int assert_slb_presence (int,unsigned long) ;
 int slb_shadow_update (unsigned long,int,unsigned long,int) ;

__attribute__((used)) static inline void create_shadowed_slbe(unsigned long ea, int ssize,
     unsigned long flags,
     enum slb_index index)
{





 slb_shadow_update(ea, ssize, flags, index);

 assert_slb_presence(0, ea);
 asm volatile("slbmte  %0,%1" :
       : "r" (mk_vsid_data(ea, ssize, flags)),
         "r" (mk_esid_data(ea, ssize, index))
       : "memory" );
}
