
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int comid; } ;


 int OPAL_ENDOFSESSION ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int clear_opal_cmd (struct opal_dev*) ;
 int end_session_cont ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int set_comid (struct opal_dev*,int ) ;

__attribute__((used)) static int end_opal_session(struct opal_dev *dev, void *data)
{
 int err = 0;

 clear_opal_cmd(dev);
 set_comid(dev, dev->comid);
 add_token_u8(&err, dev, OPAL_ENDOFSESSION);

 if (err < 0)
  return err;

 return finalize_and_send(dev, end_session_cont);
}
