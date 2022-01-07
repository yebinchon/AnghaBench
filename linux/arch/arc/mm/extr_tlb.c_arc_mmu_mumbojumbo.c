
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_arc_mmu {int sets; int ways; int pae; int u_itlb; int u_dtlb; int pg_sz_k; int ver; scalar_t__ s_pg_sz_m; } ;
struct TYPE_2__ {struct cpuinfo_arc_mmu mmu; } ;


 int CONFIG_ARC_HAS_PAE40 ;
 int CONFIG_TRANSPARENT_HUGEPAGE ;
 int IS_AVAIL2 (int ,char*,int ) ;
 int IS_USED_CFG (int ) ;
 TYPE_1__* cpuinfo_arc700 ;
 scalar_t__ scnprintf (char*,int,char*,int ,int ,...) ;

char *arc_mmu_mumbojumbo(int cpu_id, char *buf, int len)
{
 int n = 0;
 struct cpuinfo_arc_mmu *p_mmu = &cpuinfo_arc700[cpu_id].mmu;
 char super_pg[64] = "";

 if (p_mmu->s_pg_sz_m)
  scnprintf(super_pg, 64, "%dM Super Page %s",
     p_mmu->s_pg_sz_m,
     IS_USED_CFG(CONFIG_TRANSPARENT_HUGEPAGE));

 n += scnprintf(buf + n, len - n,
        "MMU [v%x]\t: %dk PAGE, %sJTLB %d (%dx%d), uDTLB %d, uITLB %d%s%s\n",
         p_mmu->ver, p_mmu->pg_sz_k, super_pg,
         p_mmu->sets * p_mmu->ways, p_mmu->sets, p_mmu->ways,
         p_mmu->u_dtlb, p_mmu->u_itlb,
         IS_AVAIL2(p_mmu->pae, ", PAE40 ", CONFIG_ARC_HAS_PAE40));

 return buf;
}
