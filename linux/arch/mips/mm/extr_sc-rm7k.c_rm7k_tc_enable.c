
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int RM7K_CONF_TE ;
 int __rm7k_tc_enable ;
 int read_c0_config () ;
 int run_uncached (int ) ;
 scalar_t__ tcache_size ;

__attribute__((used)) static void rm7k_tc_enable(void)
{
 if (read_c0_config() & RM7K_CONF_TE)
  return;

 BUG_ON(tcache_size == 0);

 run_uncached(__rm7k_tc_enable);
}
