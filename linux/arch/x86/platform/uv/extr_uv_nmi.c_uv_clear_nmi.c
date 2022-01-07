
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_hub_nmi_s {int nmi_lock; scalar_t__ hub_present; int in_nmi; int cpu_owner; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int raw_spin_unlock (int *) ;
 struct uv_hub_nmi_s* uv_hub_nmi ;
 int uv_local_mmr_clear_nmi () ;
 int uv_reassert_nmi () ;

__attribute__((used)) static inline void uv_clear_nmi(int cpu)
{
 struct uv_hub_nmi_s *hub_nmi = uv_hub_nmi;

 if (cpu == atomic_read(&hub_nmi->cpu_owner)) {
  atomic_set(&hub_nmi->cpu_owner, -1);
  atomic_set(&hub_nmi->in_nmi, 0);
  if (hub_nmi->hub_present)
   uv_local_mmr_clear_nmi();
  else
   uv_reassert_nmi();
  raw_spin_unlock(&hub_nmi->nmi_lock);
 }
}
