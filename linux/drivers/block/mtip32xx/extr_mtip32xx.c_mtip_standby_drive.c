
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {TYPE_1__* pdev; TYPE_2__* port; int dd_flag; scalar_t__ sr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int MTIP_DDF_REBUILD_FAILED_BIT ;
 int MTIP_DDF_SEC_LOCK_BIT ;
 int MTIP_PF_REBUILD_BIT ;
 int dev_warn (int *,char*) ;
 int mtip_standby_immediate (TYPE_2__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mtip_standby_drive(struct driver_data *dd)
{
 int rv = 0;

 if (dd->sr || !dd->port)
  return -ENODEV;




 if (!test_bit(MTIP_PF_REBUILD_BIT, &dd->port->flags) &&
     !test_bit(MTIP_DDF_REBUILD_FAILED_BIT, &dd->dd_flag) &&
     !test_bit(MTIP_DDF_SEC_LOCK_BIT, &dd->dd_flag)) {
  rv = mtip_standby_immediate(dd->port);
  if (rv)
   dev_warn(&dd->pdev->dev,
    "STANDBY IMMEDIATE failed\n");
 }
 return rv;
}
