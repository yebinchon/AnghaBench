
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __cpuc_flush_dcache_area (int *,int) ;
 int __pa_symbol (int ) ;
 scalar_t__ phys_to_virt (int ) ;
 int secondary_startup ;
 int smp_wmb () ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static void write_release_addr(u32 release_phys)
{
 u32 *virt = (u32 *) phys_to_virt(release_phys);
 writel_relaxed(__pa_symbol(secondary_startup), virt);

 smp_wmb();
 __cpuc_flush_dcache_area(virt, sizeof(u32));
}
