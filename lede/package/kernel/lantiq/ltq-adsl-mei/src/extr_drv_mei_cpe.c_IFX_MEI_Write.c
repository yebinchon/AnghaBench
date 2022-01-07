
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_3__ {scalar_t__ private_data; } ;
typedef TYPE_1__ DSL_DRV_file_t ;
typedef scalar_t__ DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 scalar_t__ DSL_BSP_FWDownload (int *,char const*,size_t,long*,long*) ;
 scalar_t__ DSL_DEV_MEI_ERR_FAILURE ;
 int EIO ;

__attribute__((used)) static ssize_t
IFX_MEI_Write (DSL_DRV_file_t * filp, const char *buf, size_t size, loff_t * loff)
{
 DSL_DEV_MeiError_t mei_error = DSL_DEV_MEI_ERR_FAILURE;
 long offset = 0;
 DSL_DEV_Device_t *pDev = (DSL_DEV_Device_t *) filp->private_data;

 if (pDev == ((void*)0))
  return -EIO;

 mei_error =
  DSL_BSP_FWDownload (pDev, buf, size, (long *) loff, &offset);

 if (mei_error == DSL_DEV_MEI_ERR_FAILURE)
  return -EIO;
 return (ssize_t) offset;
}
