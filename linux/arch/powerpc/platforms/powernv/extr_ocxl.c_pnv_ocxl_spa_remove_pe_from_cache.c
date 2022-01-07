
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa_data {int bdfn; int phb_opal_id; } ;


 int opal_npu_spa_clear_cache (int ,int ,int) ;

int pnv_ocxl_spa_remove_pe_from_cache(void *platform_data, int pe_handle)
{
 struct spa_data *data = (struct spa_data *) platform_data;
 int rc;

 rc = opal_npu_spa_clear_cache(data->phb_opal_id, data->bdfn, pe_handle);
 return rc;
}
