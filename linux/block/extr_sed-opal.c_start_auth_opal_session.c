
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t key_len; scalar_t__ lr; int * key; } ;
struct opal_session_info {scalar_t__ who; scalar_t__ sum; TYPE_1__ opal_key; } ;
struct opal_dev {int dummy; } ;
typedef int lk_ul_user ;


 int GENERIC_HOST_SESSION_NUM ;
 scalar_t__ OPAL_ADMIN1 ;
 size_t OPAL_ADMIN1_UID ;
 int OPAL_ENDNAME ;
 size_t OPAL_LOCKINGSP_UID ;
 size_t OPAL_SMUID_UID ;
 int OPAL_STARTNAME ;
 size_t OPAL_STARTSESSION ;
 int OPAL_UID_LENGTH ;
 int add_token_bytestring (int*,struct opal_dev*,int *,int) ;
 int add_token_u64 (int*,struct opal_dev*,int ) ;
 int add_token_u8 (int*,struct opal_dev*,int) ;
 int build_locking_user (int *,int,scalar_t__) ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int memcpy (int *,int *,int) ;
 int * opalmethod ;
 int ** opaluid ;
 int pr_debug (char*) ;
 int start_opal_session_cont ;

__attribute__((used)) static int start_auth_opal_session(struct opal_dev *dev, void *data)
{
 struct opal_session_info *session = data;
 u8 lk_ul_user[OPAL_UID_LENGTH];
 size_t keylen = session->opal_key.key_len;
 int err = 0;

 u8 *key = session->opal_key.key;
 u32 hsn = GENERIC_HOST_SESSION_NUM;

 if (session->sum)
  err = build_locking_user(lk_ul_user, sizeof(lk_ul_user),
      session->opal_key.lr);
 else if (session->who != OPAL_ADMIN1 && !session->sum)
  err = build_locking_user(lk_ul_user, sizeof(lk_ul_user),
      session->who - 1);
 else
  memcpy(lk_ul_user, opaluid[OPAL_ADMIN1_UID], OPAL_UID_LENGTH);

 if (err)
  return err;

 err = cmd_start(dev, opaluid[OPAL_SMUID_UID],
   opalmethod[OPAL_STARTSESSION]);

 add_token_u64(&err, dev, hsn);
 add_token_bytestring(&err, dev, opaluid[OPAL_LOCKINGSP_UID],
        OPAL_UID_LENGTH);
 add_token_u8(&err, dev, 1);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, 0);
 add_token_bytestring(&err, dev, key, keylen);
 add_token_u8(&err, dev, OPAL_ENDNAME);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, 3);
 add_token_bytestring(&err, dev, lk_ul_user, OPAL_UID_LENGTH);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 if (err) {
  pr_debug("Error building STARTSESSION command.\n");
  return err;
 }

 return finalize_and_send(dev, start_opal_session_cont);
}
