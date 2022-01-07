
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_msi_priv_data {int devid; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct platform_msi_priv_data*) ;
 int platform_msi_devid_ida ;

__attribute__((used)) static void platform_msi_free_priv_data(struct platform_msi_priv_data *data)
{
 ida_simple_remove(&platform_msi_devid_ida, data->devid);
 kfree(data);
}
