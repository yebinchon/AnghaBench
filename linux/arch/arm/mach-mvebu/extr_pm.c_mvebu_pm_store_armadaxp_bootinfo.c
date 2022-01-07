
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int phys_addr_t ;


 int BOOT_MAGIC_LIST_END ;
 int BOOT_MAGIC_WORD ;
 int MBUS_INTERNAL_REG_ADDRESS ;
 int MBUS_WINDOW_12_CTRL ;
 int __pa_symbol (int ) ;
 int armada_370_xp_cpu_resume ;
 int mvebu_internal_reg_base () ;
 int mvebu_mbus_save_cpu_target (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void mvebu_pm_store_armadaxp_bootinfo(u32 *store_addr)
{
 phys_addr_t resume_pc;

 resume_pc = __pa_symbol(armada_370_xp_cpu_resume);
 writel(BOOT_MAGIC_WORD, store_addr++);
 writel(resume_pc, store_addr++);







 writel(MBUS_WINDOW_12_CTRL, store_addr++);
 writel(0x0, store_addr++);





 writel(MBUS_INTERNAL_REG_ADDRESS, store_addr++);
 writel(mvebu_internal_reg_base(), store_addr++);






 store_addr += mvebu_mbus_save_cpu_target(store_addr);

 writel(BOOT_MAGIC_LIST_END, store_addr);
}
