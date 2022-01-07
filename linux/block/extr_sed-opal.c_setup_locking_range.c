
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid ;
typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ lr; } ;
struct TYPE_4__ {TYPE_1__ opal_key; } ;
struct opal_user_lr_setup {int range_start; int range_length; int WLE; int RLE; TYPE_2__ session; } ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 int OPAL_RANGELENGTH ;
 int OPAL_RANGESTART ;
 int OPAL_READLOCKENABLED ;
 size_t OPAL_SET ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_UID_LENGTH ;
 int OPAL_VALUES ;
 int OPAL_WRITELOCKENABLED ;
 int add_token_u64 (int*,struct opal_dev*,int) ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int build_locking_range (scalar_t__*,int,scalar_t__) ;
 int cmd_start (struct opal_dev*,scalar_t__*,int ) ;
 int enable_global_lr (struct opal_dev*,scalar_t__*,struct opal_user_lr_setup*) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int setup_locking_range(struct opal_dev *dev, void *data)
{
 u8 uid[OPAL_UID_LENGTH];
 struct opal_user_lr_setup *setup = data;
 u8 lr;
 int err;

 lr = setup->session.opal_key.lr;
 err = build_locking_range(uid, sizeof(uid), lr);
 if (err)
  return err;

 if (lr == 0)
  err = enable_global_lr(dev, uid, setup);
 else {
  err = cmd_start(dev, uid, opalmethod[OPAL_SET]);

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, OPAL_VALUES);
  add_token_u8(&err, dev, OPAL_STARTLIST);

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, OPAL_RANGESTART);
  add_token_u64(&err, dev, setup->range_start);
  add_token_u8(&err, dev, OPAL_ENDNAME);

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, OPAL_RANGELENGTH);
  add_token_u64(&err, dev, setup->range_length);
  add_token_u8(&err, dev, OPAL_ENDNAME);

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, OPAL_READLOCKENABLED);
  add_token_u64(&err, dev, !!setup->RLE);
  add_token_u8(&err, dev, OPAL_ENDNAME);

  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, OPAL_WRITELOCKENABLED);
  add_token_u64(&err, dev, !!setup->WLE);
  add_token_u8(&err, dev, OPAL_ENDNAME);

  add_token_u8(&err, dev, OPAL_ENDLIST);
  add_token_u8(&err, dev, OPAL_ENDNAME);
 }
 if (err) {
  pr_debug("Error building Setup Locking range command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
