
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __cpuc_flush_dcache_area (int*,int) ;
 int* cpu_do_resume ;
 int cpu_do_suspend (int*) ;
 int flush_cache_louis () ;
 int* idmap_pgd ;
 int outer_clean_range (int,int) ;
 int virt_to_phys (int*) ;

void __cpu_suspend_save(u32 *ptr, u32 ptrsz, u32 sp, u32 *save_ptr)
{
 u32 *ctx = ptr;

 *save_ptr = virt_to_phys(ptr);


 *ptr++ = virt_to_phys(idmap_pgd);
 *ptr++ = sp;
 *ptr++ = virt_to_phys(cpu_do_resume);

 cpu_do_suspend(ptr);

 flush_cache_louis();
 __cpuc_flush_dcache_area(ctx, ptrsz);
 __cpuc_flush_dcache_area(save_ptr, sizeof(*save_ptr));

 outer_clean_range(*save_ptr, *save_ptr + ptrsz);
 outer_clean_range(virt_to_phys(save_ptr),
     virt_to_phys(save_ptr) + sizeof(*save_ptr));
}
