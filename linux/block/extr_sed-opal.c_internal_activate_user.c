
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_session_info {int who; } ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 size_t OPAL_SET ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_TRUE ;
 int OPAL_UID_LENGTH ;
 size_t OPAL_USER1_UID ;
 int OPAL_VALUES ;
 int add_token_u8 (int*,struct opal_dev*,int) ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int memcpy (int *,int ,int) ;
 int * opalmethod ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int internal_activate_user(struct opal_dev *dev, void *data)
{
 struct opal_session_info *session = data;
 u8 uid[OPAL_UID_LENGTH];
 int err;

 memcpy(uid, opaluid[OPAL_USER1_UID], OPAL_UID_LENGTH);
 uid[7] = session->who;

 err = cmd_start(dev, uid, opalmethod[OPAL_SET]);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_VALUES);
 add_token_u8(&err, dev, OPAL_STARTLIST);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, 5);
 add_token_u8(&err, dev, OPAL_TRUE);
 add_token_u8(&err, dev, OPAL_ENDNAME);
 add_token_u8(&err, dev, OPAL_ENDLIST);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 if (err) {
  pr_debug("Error building Activate UserN command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
