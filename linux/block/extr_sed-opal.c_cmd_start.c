
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {int comid; } ;


 int OPAL_CALL ;
 int OPAL_METHOD_LENGTH ;
 int OPAL_STARTLIST ;
 int OPAL_UID_LENGTH ;
 int add_token_bytestring (int*,struct opal_dev*,int const*,int ) ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int clear_opal_cmd (struct opal_dev*) ;
 int set_comid (struct opal_dev*,int ) ;

__attribute__((used)) static int cmd_start(struct opal_dev *dev, const u8 *uid, const u8 *method)
{
 int err = 0;

 clear_opal_cmd(dev);
 set_comid(dev, dev->comid);

 add_token_u8(&err, dev, OPAL_CALL);
 add_token_bytestring(&err, dev, uid, OPAL_UID_LENGTH);
 add_token_bytestring(&err, dev, method, OPAL_METHOD_LENGTH);






 add_token_u8(&err, dev, OPAL_STARTLIST);

 return err;
}
