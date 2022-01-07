
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CKSEG0ADDR (int) ;
 int Index_Store_Tag_SD ;
 int RM7K_CONF_SE ;
 int cache_op (int ,int ) ;
 scalar_t__ sc_lsize ;
 int scache_size ;
 int set_c0_config (int ) ;
 int write_c0_taghi (int ) ;
 int write_c0_taglo (int ) ;

__attribute__((used)) static void __rm7k_sc_enable(void)
{
 int i;

 set_c0_config(RM7K_CONF_SE);

 write_c0_taglo(0);
 write_c0_taghi(0);

 for (i = 0; i < scache_size; i += sc_lsize)
  cache_op(Index_Store_Tag_SD, CKSEG0ADDR(i));
}
