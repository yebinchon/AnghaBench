
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RM7K_CONF_SE ;
 int __rm7k_sc_enable ;
 int pr_info (char*) ;
 int read_c0_config () ;
 int rm7k_tc_enable () ;
 scalar_t__ rm7k_tcache_init ;
 int run_uncached (int ) ;

__attribute__((used)) static void rm7k_sc_enable(void)
{
 if (read_c0_config() & RM7K_CONF_SE)
  return;

 pr_info("Enabling secondary cache...\n");
 run_uncached(__rm7k_sc_enable);

 if (rm7k_tcache_init)
  rm7k_tc_enable();
}
