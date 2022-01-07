
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int slidx_list_t ;
typedef int sal_processor_static_info_t ;
typedef int sal_log_smbios_dev_err_info_t ;
typedef int sal_log_sel_dev_err_info_t ;
typedef int sal_log_processor_info_t ;
typedef int sal_log_plat_specific_err_info_t ;
typedef int sal_log_plat_bus_err_info_t ;
typedef int sal_log_pci_comp_err_info_t ;
typedef int sal_log_pci_bus_err_info_t ;
typedef int sal_log_mem_dev_err_info_t ;
typedef int sal_log_host_ctlr_err_info_t ;
struct TYPE_2__ {int max_idx; scalar_t__ buffer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmalloc_array (int,int,int ) ;
 int sal_rec_max ;
 TYPE_1__ slidx_pool ;

__attribute__((used)) static int
init_record_index_pools(void)
{
 int i;
 int rec_max_size;
 int sect_min_size;

 static int sal_log_sect_min_sizes[] = {
  sizeof(sal_log_processor_info_t)
  + sizeof(sal_processor_static_info_t),
  sizeof(sal_log_mem_dev_err_info_t),
  sizeof(sal_log_sel_dev_err_info_t),
  sizeof(sal_log_pci_bus_err_info_t),
  sizeof(sal_log_smbios_dev_err_info_t),
  sizeof(sal_log_pci_comp_err_info_t),
  sizeof(sal_log_plat_specific_err_info_t),
  sizeof(sal_log_host_ctlr_err_info_t),
  sizeof(sal_log_plat_bus_err_info_t),
 };
 rec_max_size = sal_rec_max;


 sect_min_size = sal_log_sect_min_sizes[0];
 for (i = 1; i < sizeof sal_log_sect_min_sizes/sizeof(size_t); i++)
  if (sect_min_size > sal_log_sect_min_sizes[i])
   sect_min_size = sal_log_sect_min_sizes[i];


 slidx_pool.max_idx = (rec_max_size/sect_min_size) * 2 + 1;
 slidx_pool.buffer =
  kmalloc_array(slidx_pool.max_idx, sizeof(slidx_list_t),
         GFP_KERNEL);

 return slidx_pool.buffer ? 0 : -ENOMEM;
}
