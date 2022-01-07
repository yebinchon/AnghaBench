
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * private_data; } ;
struct TYPE_5__ {int i_rdev; } ;
typedef TYPE_1__ DSL_DRV_inode_t ;
typedef TYPE_2__ DSL_DRV_file_t ;
typedef int DSL_DEV_Device_t ;


 int * DSL_BSP_DriverHandleGet (int,int) ;
 int EIO ;
 int IFX_MEI_EMSG (char*,int,int) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;

__attribute__((used)) static int
IFX_MEI_Open (DSL_DRV_inode_t * ino, DSL_DRV_file_t * fil)
{
 int maj = MAJOR (ino->i_rdev);
 int num = MINOR (ino->i_rdev);

 DSL_DEV_Device_t *pDev = ((void*)0);
 if ((pDev = DSL_BSP_DriverHandleGet (maj, num)) == ((void*)0)) {
  IFX_MEI_EMSG("open(%d:%d) fail!\n", maj, num);
  return -EIO;
 }
 fil->private_data = pDev;
 return 0;
}
