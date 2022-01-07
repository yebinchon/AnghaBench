
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_platform_data {int (* init_module ) (int ,int ,int *) ;} ;
struct sysc {int cookie; int mdata; int dev; } ;


 int EEXIST ;
 struct ti_sysc_platform_data* dev_get_platdata (int ) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int sysc_legacy_init(struct sysc *ddata)
{
 struct ti_sysc_platform_data *pdata = dev_get_platdata(ddata->dev);
 int error;

 if (!pdata || !pdata->init_module)
  return 0;

 error = pdata->init_module(ddata->dev, ddata->mdata, &ddata->cookie);
 if (error == -EEXIST)
  error = 0;

 return error;
}
