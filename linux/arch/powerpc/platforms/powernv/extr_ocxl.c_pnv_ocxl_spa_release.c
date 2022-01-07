
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa_data {int bdfn; int phb_opal_id; } ;


 int WARN_ON (int) ;
 int kfree (struct spa_data*) ;
 int opal_npu_spa_setup (int ,int ,int ,int ) ;

void pnv_ocxl_spa_release(void *platform_data)
{
 struct spa_data *data = (struct spa_data *) platform_data;
 int rc;

 rc = opal_npu_spa_setup(data->phb_opal_id, data->bdfn, 0, 0);
 WARN_ON(rc);
 kfree(data);
}
