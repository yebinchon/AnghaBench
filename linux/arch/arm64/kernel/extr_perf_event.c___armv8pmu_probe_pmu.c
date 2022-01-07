
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct armv8pmu_probe_info {int present; struct arm_pmu* pmu; } ;
struct arm_pmu {int num_events; int pmceid_ext_bitmap; int pmceid_bitmap; } ;


 int ARMV8_PMUV3_MAX_COMMON_EVENTS ;
 int ARMV8_PMU_PMCR_N_MASK ;
 int ARMV8_PMU_PMCR_N_SHIFT ;
 int ID_AA64DFR0_PMUVER_SHIFT ;
 int armv8pmu_pmcr_read () ;
 int bitmap_from_arr32 (int ,int*,int ) ;
 int cpuid_feature_extract_unsigned_field (int,int ) ;
 int id_aa64dfr0_el1 ;
 int pmceid0_el0 ;
 int pmceid1_el0 ;
 int read_sysreg (int ) ;

__attribute__((used)) static void __armv8pmu_probe_pmu(void *info)
{
 struct armv8pmu_probe_info *probe = info;
 struct arm_pmu *cpu_pmu = probe->pmu;
 u64 dfr0;
 u64 pmceid_raw[2];
 u32 pmceid[2];
 int pmuver;

 dfr0 = read_sysreg(id_aa64dfr0_el1);
 pmuver = cpuid_feature_extract_unsigned_field(dfr0,
   ID_AA64DFR0_PMUVER_SHIFT);
 if (pmuver == 0xf || pmuver == 0)
  return;

 probe->present = 1;


 cpu_pmu->num_events = (armv8pmu_pmcr_read() >> ARMV8_PMU_PMCR_N_SHIFT)
  & ARMV8_PMU_PMCR_N_MASK;


 cpu_pmu->num_events += 1;

 pmceid[0] = pmceid_raw[0] = read_sysreg(pmceid0_el0);
 pmceid[1] = pmceid_raw[1] = read_sysreg(pmceid1_el0);

 bitmap_from_arr32(cpu_pmu->pmceid_bitmap,
        pmceid, ARMV8_PMUV3_MAX_COMMON_EVENTS);

 pmceid[0] = pmceid_raw[0] >> 32;
 pmceid[1] = pmceid_raw[1] >> 32;

 bitmap_from_arr32(cpu_pmu->pmceid_ext_bitmap,
        pmceid, ARMV8_PMUV3_MAX_COMMON_EVENTS);
}
