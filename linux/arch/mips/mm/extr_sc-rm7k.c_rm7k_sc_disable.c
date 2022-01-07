
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RM7K_CONF_SE ;
 int clear_c0_config (int ) ;
 int rm7k_tc_disable () ;
 scalar_t__ rm7k_tcache_init ;

__attribute__((used)) static void rm7k_sc_disable(void)
{
 clear_c0_config(RM7K_CONF_SE);

 if (rm7k_tcache_init)
  rm7k_tc_disable();
}
