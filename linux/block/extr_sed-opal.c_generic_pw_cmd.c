
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 int OPAL_PIN ;
 size_t OPAL_SET ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_VALUES ;
 int add_token_bytestring (int*,struct opal_dev*,int *,size_t) ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int * opalmethod ;

__attribute__((used)) static int generic_pw_cmd(u8 *key, size_t key_len, u8 *cpin_uid,
     struct opal_dev *dev)
{
 int err;

 err = cmd_start(dev, cpin_uid, opalmethod[OPAL_SET]);

 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_VALUES);
 add_token_u8(&err, dev, OPAL_STARTLIST);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_PIN);
 add_token_bytestring(&err, dev, key, key_len);
 add_token_u8(&err, dev, OPAL_ENDNAME);
 add_token_u8(&err, dev, OPAL_ENDLIST);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 return err;
}
