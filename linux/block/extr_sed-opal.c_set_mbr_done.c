
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 size_t OPAL_MBRCONTROL ;
 int OPAL_MBRDONE ;
 size_t OPAL_SET ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int OPAL_VALUES ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int cmd_start (struct opal_dev*,int ,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int * opaluid ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int set_mbr_done(struct opal_dev *dev, void *data)
{
 u8 *mbr_done_tf = data;
 int err;

 err = cmd_start(dev, opaluid[OPAL_MBRCONTROL],
   opalmethod[OPAL_SET]);

 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_VALUES);
 add_token_u8(&err, dev, OPAL_STARTLIST);
 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_MBRDONE);
 add_token_u8(&err, dev, *mbr_done_tf);
 add_token_u8(&err, dev, OPAL_ENDNAME);
 add_token_u8(&err, dev, OPAL_ENDLIST);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 if (err) {
  pr_debug("Error Building set MBR Done command\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
