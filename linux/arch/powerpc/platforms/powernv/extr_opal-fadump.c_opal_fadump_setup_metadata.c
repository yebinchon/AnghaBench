
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_dump {scalar_t__ boot_mem_top; scalar_t__ kernel_metadata; scalar_t__ reserve_dump_area_size; scalar_t__ reserve_dump_area_start; } ;
typedef scalar_t__ s64 ;


 int EPERM ;
 int OPAL_MPIPL_TAG_BOOT_MEM ;
 int OPAL_MPIPL_TAG_KERNEL ;
 scalar_t__ OPAL_SUCCESS ;
 int __va (scalar_t__) ;
 scalar_t__ opal_fadump_get_metadata_size () ;
 int opal_fadump_init_metadata (int ) ;
 int opal_fdm ;
 scalar_t__ opal_mpipl_register_tag (int ,scalar_t__) ;
 int pr_err (char*) ;
 int pr_info (char*,scalar_t__) ;

__attribute__((used)) static int opal_fadump_setup_metadata(struct fw_dump *fadump_conf)
{
 int err = 0;
 s64 ret;





 fadump_conf->kernel_metadata = (fadump_conf->reserve_dump_area_start +
     fadump_conf->reserve_dump_area_size -
     opal_fadump_get_metadata_size());
 pr_info("Kernel metadata addr: %llx\n", fadump_conf->kernel_metadata);


 opal_fdm = __va(fadump_conf->kernel_metadata);
 opal_fadump_init_metadata(opal_fdm);





 ret = opal_mpipl_register_tag(OPAL_MPIPL_TAG_KERNEL,
          fadump_conf->kernel_metadata);
 if (ret != OPAL_SUCCESS) {
  pr_err("Failed to set kernel metadata tag!\n");
  err = -EPERM;
 }





 ret = opal_mpipl_register_tag(OPAL_MPIPL_TAG_BOOT_MEM,
          fadump_conf->boot_mem_top);
 if (ret != OPAL_SUCCESS) {
  pr_err("Failed to set boot memory tag!\n");
  err = -EPERM;
 }

 return err;
}
