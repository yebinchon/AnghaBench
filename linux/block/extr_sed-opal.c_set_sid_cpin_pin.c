
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_key {int key_len; int key; } ;
struct opal_dev {int dummy; } ;


 int ERANGE ;
 size_t OPAL_C_PIN_SID ;
 int OPAL_UID_LENGTH ;
 int finalize_and_send (struct opal_dev*,int ) ;
 scalar_t__ generic_pw_cmd (int ,int ,int *,struct opal_dev*) ;
 int memcpy (int *,int ,int) ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int set_sid_cpin_pin(struct opal_dev *dev, void *data)
{
 u8 cpin_uid[OPAL_UID_LENGTH];
 struct opal_key *key = data;

 memcpy(cpin_uid, opaluid[OPAL_C_PIN_SID], OPAL_UID_LENGTH);

 if (generic_pw_cmd(key->key, key->key_len, cpin_uid, dev)) {
  pr_debug("Error building Set SID cpin\n");
  return -ERANGE;
 }
 return finalize_and_send(dev, parse_and_check_status);
}
