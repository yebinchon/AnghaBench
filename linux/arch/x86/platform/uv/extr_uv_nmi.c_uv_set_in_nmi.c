
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_hub_nmi_s {int nmi_count; int cpu_owner; int in_nmi; } ;


 int atomic_add_unless (int *,int,int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int uv_in_nmi ;
 int uv_nmi_cpu ;

__attribute__((used)) static int uv_set_in_nmi(int cpu, struct uv_hub_nmi_s *hub_nmi)
{
 int first = atomic_add_unless(&hub_nmi->in_nmi, 1, 1);

 if (first) {
  atomic_set(&hub_nmi->cpu_owner, cpu);
  if (atomic_add_unless(&uv_in_nmi, 1, 1))
   atomic_set(&uv_nmi_cpu, cpu);

  atomic_inc(&hub_nmi->nmi_count);
 }
 return first;
}
