
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long APIC_DM_INIT ;
 unsigned long APIC_DM_STARTUP ;
 int UVH_IPI_INT ;
 int UVH_IPI_INT_APIC_ID_SHFT ;
 unsigned long UVH_IPI_INT_SEND_SHFT ;
 unsigned long UVH_IPI_INT_VECTOR_SHFT ;
 int uv_apicid_hibits ;
 int uv_apicid_to_pnode (int) ;
 int uv_write_global_mmr64 (int,int ,unsigned long) ;

__attribute__((used)) static int uv_wakeup_secondary(int phys_apicid, unsigned long start_rip)
{
 unsigned long val;
 int pnode;

 pnode = uv_apicid_to_pnode(phys_apicid);
 phys_apicid |= uv_apicid_hibits;

 val = (1UL << UVH_IPI_INT_SEND_SHFT) |
     (phys_apicid << UVH_IPI_INT_APIC_ID_SHFT) |
     ((start_rip << UVH_IPI_INT_VECTOR_SHFT) >> 12) |
     APIC_DM_INIT;

 uv_write_global_mmr64(pnode, UVH_IPI_INT, val);

 val = (1UL << UVH_IPI_INT_SEND_SHFT) |
     (phys_apicid << UVH_IPI_INT_APIC_ID_SHFT) |
     ((start_rip << UVH_IPI_INT_VECTOR_SHFT) >> 12) |
     APIC_DM_STARTUP;

 uv_write_global_mmr64(pnode, UVH_IPI_INT, val);

 return 0;
}
