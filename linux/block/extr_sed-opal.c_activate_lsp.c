
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_lr ;
typedef int u8 ;
struct opal_lr_act {int* lr; int num_lrs; scalar_t__ sum; } ;
struct opal_dev {int dummy; } ;


 size_t OPAL_ACTIVATE ;
 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 size_t OPAL_LOCKINGSP_UID ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_UID_LENGTH ;
 int add_token_bytestring (int*,struct opal_dev*,int*,int) ;
 int add_token_u8 (int*,struct opal_dev*,int) ;
 int build_locking_range (int*,int,int) ;
 int cmd_start (struct opal_dev*,int ,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int activate_lsp(struct opal_dev *dev, void *data)
{
 struct opal_lr_act *opal_act = data;
 u8 user_lr[OPAL_UID_LENGTH];
 u8 uint_3 = 0x83;
 int err, i;

 err = cmd_start(dev, opaluid[OPAL_LOCKINGSP_UID],
   opalmethod[OPAL_ACTIVATE]);

 if (opal_act->sum) {
  err = build_locking_range(user_lr, sizeof(user_lr),
       opal_act->lr[0]);
  if (err)
   return err;

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, uint_3);
  add_token_u8(&err, dev, 6);
  add_token_u8(&err, dev, 0);
  add_token_u8(&err, dev, 0);

  add_token_u8(&err, dev, OPAL_STARTLIST);
  add_token_bytestring(&err, dev, user_lr, OPAL_UID_LENGTH);
  for (i = 1; i < opal_act->num_lrs; i++) {
   user_lr[7] = opal_act->lr[i];
   add_token_bytestring(&err, dev, user_lr, OPAL_UID_LENGTH);
  }
  add_token_u8(&err, dev, OPAL_ENDLIST);
  add_token_u8(&err, dev, OPAL_ENDNAME);
 }

 if (err) {
  pr_debug("Error building Activate LockingSP command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
