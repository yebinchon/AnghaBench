
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct opal_dev {int parsed; } ;


 int ENODEV ;
 int OPAL_LIFECYCLE ;
 size_t OPAL_LOCKINGSP_UID ;
 scalar_t__ OPAL_MANUFACTURED_INACTIVE ;
 int generic_get_column (struct opal_dev*,int ,int ) ;
 int * opaluid ;
 int pr_debug (char*) ;
 scalar_t__ response_get_u64 (int *,int) ;

__attribute__((used)) static int get_lsp_lifecycle(struct opal_dev *dev, void *data)
{
 u8 lc_status;
 int err;

 err = generic_get_column(dev, opaluid[OPAL_LOCKINGSP_UID],
     OPAL_LIFECYCLE);
 if (err)
  return err;

 lc_status = response_get_u64(&dev->parsed, 4);


 if (lc_status != OPAL_MANUFACTURED_INACTIVE) {
  pr_debug("Couldn't determine the status of the Lifecycle state\n");
  return -ENODEV;
 }

 return 0;
}
