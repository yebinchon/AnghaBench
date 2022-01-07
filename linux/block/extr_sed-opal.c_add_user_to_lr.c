
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int lr; } ;
struct TYPE_4__ {int who; TYPE_1__ opal_key; } ;
struct opal_lock_unlock {scalar_t__ l_state; TYPE_2__ session; } ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 size_t OPAL_HALF_UID_AUTHORITY_OBJ_REF ;
 size_t OPAL_HALF_UID_BOOLEAN_ACE ;
 size_t OPAL_LOCKINGRANGE_ACE_RDLOCKED ;
 size_t OPAL_LOCKINGRANGE_ACE_WRLOCKED ;
 scalar_t__ OPAL_RW ;
 size_t OPAL_SET ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_UID_LENGTH ;
 size_t OPAL_USER1_UID ;
 int OPAL_VALUES ;
 int add_token_bytestring (int*,struct opal_dev*,int *,int) ;
 int add_token_u8 (int*,struct opal_dev*,int) ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int memcpy (int *,int *,int) ;
 int * opalmethod ;
 int ** opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int add_user_to_lr(struct opal_dev *dev, void *data)
{
 u8 lr_buffer[OPAL_UID_LENGTH];
 u8 user_uid[OPAL_UID_LENGTH];
 struct opal_lock_unlock *lkul = data;
 int err;

 memcpy(lr_buffer, opaluid[OPAL_LOCKINGRANGE_ACE_RDLOCKED],
        OPAL_UID_LENGTH);

 if (lkul->l_state == OPAL_RW)
  memcpy(lr_buffer, opaluid[OPAL_LOCKINGRANGE_ACE_WRLOCKED],
         OPAL_UID_LENGTH);

 lr_buffer[7] = lkul->session.opal_key.lr;

 memcpy(user_uid, opaluid[OPAL_USER1_UID], OPAL_UID_LENGTH);

 user_uid[7] = lkul->session.who;

 err = cmd_start(dev, lr_buffer, opalmethod[OPAL_SET]);

 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_VALUES);

 add_token_u8(&err, dev, OPAL_STARTLIST);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, 3);

 add_token_u8(&err, dev, OPAL_STARTLIST);


 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_bytestring(&err, dev,
        opaluid[OPAL_HALF_UID_AUTHORITY_OBJ_REF],
        OPAL_UID_LENGTH/2);
 add_token_bytestring(&err, dev, user_uid, OPAL_UID_LENGTH);
 add_token_u8(&err, dev, OPAL_ENDNAME);


 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_bytestring(&err, dev,
        opaluid[OPAL_HALF_UID_AUTHORITY_OBJ_REF],
        OPAL_UID_LENGTH/2);
 add_token_bytestring(&err, dev, user_uid, OPAL_UID_LENGTH);
 add_token_u8(&err, dev, OPAL_ENDNAME);


 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_bytestring(&err, dev, opaluid[OPAL_HALF_UID_BOOLEAN_ACE],
        OPAL_UID_LENGTH/2);
 add_token_u8(&err, dev, 1);
 add_token_u8(&err, dev, OPAL_ENDNAME);


 add_token_u8(&err, dev, OPAL_ENDLIST);
 add_token_u8(&err, dev, OPAL_ENDNAME);
 add_token_u8(&err, dev, OPAL_ENDLIST);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 if (err) {
  pr_debug("Error building add user to locking range command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
