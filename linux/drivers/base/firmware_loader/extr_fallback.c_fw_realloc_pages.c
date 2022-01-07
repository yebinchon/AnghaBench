
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_sysfs {int fw_priv; } ;


 int PAGE_ALIGN (int) ;
 int PAGE_SHIFT ;
 int fw_grow_paged_buf (int ,int) ;
 int fw_load_abort (struct fw_sysfs*) ;

__attribute__((used)) static int fw_realloc_pages(struct fw_sysfs *fw_sysfs, int min_size)
{
 int err;

 err = fw_grow_paged_buf(fw_sysfs->fw_priv,
    PAGE_ALIGN(min_size) >> PAGE_SHIFT);
 if (err)
  fw_load_abort(fw_sysfs);
 return err;
}
