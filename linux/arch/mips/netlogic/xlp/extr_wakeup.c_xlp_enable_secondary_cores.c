
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nlm_soc_info {unsigned int coremask; int sysbase; } ;
typedef int cpumask_t ;


 int FUSE_9XX_DEVCFG6 ;
 int NLM_NR_NODES ;
 int NLM_THREADS_PER_CORE ;
 int PRID_IMP_MASK ;





 int SYS_EFUSE_DEVICE_CFG_STATUS0 ;
 scalar_t__ cpu_is_xlp9xx () ;
 int cpumask_test_cpu (int,int const*) ;
 int hweight32 (int) ;
 int nlm_cores_per_node () ;
 int nlm_get_fuse_regbase (int) ;
 struct nlm_soc_info* nlm_get_node (int) ;
 int nlm_get_sys_pcibase (int) ;
 int nlm_node_init (int) ;
 int nlm_read_reg (int ,int ) ;
 int nlm_read_sys_reg (int ,int ) ;
 int pr_err (char*,int,int) ;
 int pr_info (char*,int,int) ;
 int read_c0_prid () ;
 int wait_for_cpus (int,int ) ;
 int xlp9xx_get_socbus (int) ;
 int xlp_wakeup_core (int ,int,int) ;

__attribute__((used)) static void xlp_enable_secondary_cores(const cpumask_t *wakeup_mask)
{
 struct nlm_soc_info *nodep;
 uint64_t syspcibase, fusebase;
 uint32_t syscoremask, mask, fusemask;
 int core, n, cpu, ncores;

 for (n = 0; n < NLM_NR_NODES; n++) {
  if (n != 0) {

   if (cpu_is_xlp9xx()) {
    int b = xlp9xx_get_socbus(n);
    pr_info("Node %d SoC PCI bus %d.\n", n, b);
    if (b == 0)
     break;
   } else {
    syspcibase = nlm_get_sys_pcibase(n);
    if (nlm_read_reg(syspcibase, 0) == 0xffffffff)
     break;
   }
   nlm_node_init(n);
  }


  nodep = nlm_get_node(n);

  if (cpu_is_xlp9xx()) {
   fusebase = nlm_get_fuse_regbase(n);
   fusemask = nlm_read_reg(fusebase, FUSE_9XX_DEVCFG6);
   switch (read_c0_prid() & PRID_IMP_MASK) {
   case 130:
    mask = 0xff;
    break;
   case 128:
   default:
    mask = 0xfffff;
    break;
   }
  } else {
   fusemask = nlm_read_sys_reg(nodep->sysbase,
      SYS_EFUSE_DEVICE_CFG_STATUS0);
   switch (read_c0_prid() & PRID_IMP_MASK) {
   case 131:
    mask = 0xf;
    break;
   case 132:
    mask = 0x3;
    break;
   case 129:
   default:
    mask = 0xff;
    break;
   }
  }





  syscoremask = (1 << hweight32(~fusemask & mask)) - 1;

  pr_info("Node %d - SYS/FUSE coremask %x\n", n, syscoremask);
  ncores = nlm_cores_per_node();
  for (core = 0; core < ncores; core++) {

   if (n == 0 && core == 0)
    continue;


   if ((syscoremask & (1 << core)) == 0)
    continue;


   cpu = (n * ncores + core) * NLM_THREADS_PER_CORE;
   if (!cpumask_test_cpu(cpu, wakeup_mask))
    continue;


   if (!xlp_wakeup_core(nodep->sysbase, n, core))
    continue;


   nodep->coremask |= 1u << core;


   if (!wait_for_cpus(cpu, 0))
    pr_err("Node %d : timeout core %d\n", n, core);
  }
 }
}
