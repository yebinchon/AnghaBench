
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_system_map_mod_info {int mod_addr; } ;
struct pdc_module_path {int mod_addr; } ;


 int PDC_FIND_MODULE ;
 int PDC_SYSTEM_MAP ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int f_extend (int ) ;
 int mem_pdc_call (int ,int ,int ,int ,long) ;
 int memcpy (struct pdc_system_map_mod_info*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int pdc_result2 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_system_map_find_mods(struct pdc_system_map_mod_info *pdc_mod_info,
        struct pdc_module_path *mod_path, long mod_index)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_SYSTEM_MAP, PDC_FIND_MODULE, __pa(pdc_result),
         __pa(pdc_result2), mod_index);
 convert_to_wide(pdc_result);
 memcpy(pdc_mod_info, pdc_result, sizeof(*pdc_mod_info));
 memcpy(mod_path, pdc_result2, sizeof(*mod_path));
 spin_unlock_irqrestore(&pdc_lock, flags);

 pdc_mod_info->mod_addr = f_extend(pdc_mod_info->mod_addr);
 return retval;
}
