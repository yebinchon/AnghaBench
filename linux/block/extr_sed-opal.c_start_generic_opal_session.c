
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opal_dev {int dummy; } ;
typedef enum opal_uid { ____Placeholder_opal_uid } opal_uid ;


 int GENERIC_HOST_SESSION_NUM ;


 int OPAL_ENDNAME ;
 int OPAL_INVAL_PARAM ;


 size_t OPAL_SMUID_UID ;
 int OPAL_STARTNAME ;
 size_t OPAL_STARTSESSION ;
 int OPAL_UID_LENGTH ;
 int add_token_bytestring (int*,struct opal_dev*,char const*,int ) ;
 int add_token_u64 (int*,struct opal_dev*,int ) ;
 int add_token_u8 (int*,struct opal_dev*,int) ;
 int cmd_start (struct opal_dev*,char const*,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 char const** opaluid ;
 int pr_debug (char*,...) ;
 int start_opal_session_cont ;

__attribute__((used)) static int start_generic_opal_session(struct opal_dev *dev,
          enum opal_uid auth,
          enum opal_uid sp_type,
          const char *key,
          u8 key_len)
{
 u32 hsn;
 int err;

 if (key == ((void*)0) && auth != 130)
  return OPAL_INVAL_PARAM;

 hsn = GENERIC_HOST_SESSION_NUM;
 err = cmd_start(dev, opaluid[OPAL_SMUID_UID],
   opalmethod[OPAL_STARTSESSION]);

 add_token_u64(&err, dev, hsn);
 add_token_bytestring(&err, dev, opaluid[sp_type], OPAL_UID_LENGTH);
 add_token_u8(&err, dev, 1);

 switch (auth) {
 case 130:
  break;
 case 131:
 case 128:
 case 129:
  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, 0);
  add_token_bytestring(&err, dev, key, key_len);
  add_token_u8(&err, dev, OPAL_ENDNAME);
  add_token_u8(&err, dev, OPAL_STARTNAME);
  add_token_u8(&err, dev, 3);
  add_token_bytestring(&err, dev, opaluid[auth],
         OPAL_UID_LENGTH);
  add_token_u8(&err, dev, OPAL_ENDNAME);
  break;
 default:
  pr_debug("Cannot start Admin SP session with auth %d\n", auth);
  return OPAL_INVAL_PARAM;
 }

 if (err) {
  pr_debug("Error building start adminsp session command.\n");
  return err;
 }

 return finalize_and_send(dev, start_opal_session_cont);
}
