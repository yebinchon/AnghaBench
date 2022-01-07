
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CKSEG0ADDR (int) ;
 int Index_Store_Tag_T ;
 int RM7K_CONF_TE ;
 int cache_op (int ,int ) ;
 int set_c0_config (int ) ;
 scalar_t__ tc_lsize ;
 int tcache_size ;
 int write_c0_taghi (int ) ;
 int write_c0_taglo (int ) ;

__attribute__((used)) static void __rm7k_tc_enable(void)
{
 int i;

 set_c0_config(RM7K_CONF_TE);

 write_c0_taglo(0);
 write_c0_taghi(0);

 for (i = 0; i < tcache_size; i += tc_lsize)
  cache_op(Index_Store_Tag_T, CKSEG0ADDR(i));
}
