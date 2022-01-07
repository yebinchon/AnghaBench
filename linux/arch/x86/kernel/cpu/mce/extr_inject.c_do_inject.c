
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_6__ {int x86; } ;
struct TYPE_5__ {unsigned int extcpu; int bank; int status; int mcgstatus; int inject_flags; scalar_t__ synd; scalar_t__ misc; int tsc; } ;



 int MCG_STATUS_EIPV ;
 int MCG_STATUS_MCIP ;
 int MCG_STATUS_RIPV ;
 int MCI_STATUS_DEFERRED ;
 int MCI_STATUS_MISCV ;
 int MCI_STATUS_PCC ;
 int MCI_STATUS_SYNDV ;
 int MCI_STATUS_UC ;
 int SW_INJ ;

 int X86_FEATURE_AMD_DCM ;
 int amd_get_nb_id (unsigned int) ;
 TYPE_4__ boot_cpu_data ;
 scalar_t__ boot_cpu_has (int ) ;
 int cpu_online (unsigned int) ;
 unsigned int get_nbc_for_node (int ) ;
 int get_online_cpus () ;
 TYPE_1__ i_mce ;
 int inj_type ;
 int mce_inject_log (TYPE_1__*) ;
 int prepare_msrs ;
 int put_online_cpus () ;
 int rdtsc_ordered () ;
 int smp_call_function_single (unsigned int,int ,TYPE_1__*,int ) ;
 int toggle_hw_mce_inject (unsigned int,int) ;
 int toggle_nb_mca_mst_cpu (int ) ;
 int trigger_dfr_int ;
 int trigger_mce ;
 int trigger_thr_int ;

__attribute__((used)) static void do_inject(void)
{
 u64 mcg_status = 0;
 unsigned int cpu = i_mce.extcpu;
 u8 b = i_mce.bank;

 i_mce.tsc = rdtsc_ordered();

 if (i_mce.misc)
  i_mce.status |= MCI_STATUS_MISCV;

 if (i_mce.synd)
  i_mce.status |= MCI_STATUS_SYNDV;

 if (inj_type == SW_INJ) {
  mce_inject_log(&i_mce);
  return;
 }


 mcg_status = MCG_STATUS_MCIP | MCG_STATUS_EIPV;

 if (!(i_mce.status & MCI_STATUS_PCC))
  mcg_status |= MCG_STATUS_RIPV;






 if (inj_type == 129) {
  i_mce.status |= MCI_STATUS_DEFERRED;
  i_mce.status |= (i_mce.status & ~MCI_STATUS_UC);
 }






 if (boot_cpu_has(X86_FEATURE_AMD_DCM) &&
     b == 4 &&
     boot_cpu_data.x86 < 0x17) {
  toggle_nb_mca_mst_cpu(amd_get_nb_id(cpu));
  cpu = get_nbc_for_node(amd_get_nb_id(cpu));
 }

 get_online_cpus();
 if (!cpu_online(cpu))
  goto err;

 toggle_hw_mce_inject(cpu, 1);

 i_mce.mcgstatus = mcg_status;
 i_mce.inject_flags = inj_type;
 smp_call_function_single(cpu, prepare_msrs, &i_mce, 0);

 toggle_hw_mce_inject(cpu, 0);

 switch (inj_type) {
 case 129:
  smp_call_function_single(cpu, trigger_dfr_int, ((void*)0), 0);
  break;
 case 128:
  smp_call_function_single(cpu, trigger_thr_int, ((void*)0), 0);
  break;
 default:
  smp_call_function_single(cpu, trigger_mce, ((void*)0), 0);
 }

err:
 put_online_cpus();

}
