
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long per_cpu (int ,int) ;
 int uv_apicid_to_pnode (unsigned long) ;
 int uv_hub_send_ipi (int,unsigned long,int) ;
 int x86_cpu_to_apicid ;

__attribute__((used)) static void uv_send_IPI_one(int cpu, int vector)
{
 unsigned long apicid;
 int pnode;

 apicid = per_cpu(x86_cpu_to_apicid, cpu);
 pnode = uv_apicid_to_pnode(apicid);
 uv_hub_send_ipi(pnode, apicid, vector);
}
