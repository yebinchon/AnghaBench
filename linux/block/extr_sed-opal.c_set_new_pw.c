
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lr; int key_len; int key; } ;
struct opal_session_info {int who; TYPE_1__ opal_key; scalar_t__ sum; } ;
struct opal_dev {int dummy; } ;


 int ERANGE ;
 int OPAL_ADMIN1 ;
 size_t OPAL_C_PIN_ADMIN1 ;
 int OPAL_UID_LENGTH ;
 int finalize_and_send (struct opal_dev*,int ) ;
 scalar_t__ generic_pw_cmd (int ,int ,int*,struct opal_dev*) ;
 int memcpy (int*,int ,int) ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int set_new_pw(struct opal_dev *dev, void *data)
{
 u8 cpin_uid[OPAL_UID_LENGTH];
 struct opal_session_info *usr = data;

 memcpy(cpin_uid, opaluid[OPAL_C_PIN_ADMIN1], OPAL_UID_LENGTH);

 if (usr->who != OPAL_ADMIN1) {
  cpin_uid[5] = 0x03;
  if (usr->sum)
   cpin_uid[7] = usr->opal_key.lr + 1;
  else
   cpin_uid[7] = usr->who;
 }

 if (generic_pw_cmd(usr->opal_key.key, usr->opal_key.key_len,
      cpin_uid, dev)) {
  pr_debug("Error building set password command.\n");
  return -ERANGE;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
