
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ XIVE_INVALID_VP ;
 int nr_cpu_ids ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_err (char*) ;
 scalar_t__ xive_native_alloc_vp_block (int ) ;
 scalar_t__ xive_pool_vps ;

__attribute__((used)) static void xive_native_setup_pools(void)
{

 pr_debug("XIVE: Allocating VP block for pool size %u\n", nr_cpu_ids);

 xive_pool_vps = xive_native_alloc_vp_block(nr_cpu_ids);
 if (WARN_ON(xive_pool_vps == XIVE_INVALID_VP))
  pr_err("XIVE: Failed to allocate pool VP, KVM might not function\n");

 pr_debug("XIVE: Pool VPs allocated at 0x%x for %u max CPUs\n",
   xive_pool_vps, nr_cpu_ids);
}
