
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int dummy; } ;


 size_t OPAL_ADMINSP_UID ;
 size_t OPAL_REVERT ;
 int cmd_start (struct opal_dev*,int ,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int revert_tper(struct opal_dev *dev, void *data)
{
 int err;

 err = cmd_start(dev, opaluid[OPAL_ADMINSP_UID],
   opalmethod[OPAL_REVERT]);
 if (err) {
  pr_debug("Error building REVERT TPER command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
