
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid ;
typedef int u8 ;
struct opal_dev {int * prev_data; int prev_d_len; } ;


 size_t OPAL_GENKEY ;
 int OPAL_UID_LENGTH ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int kfree (int *) ;
 int memcpy (int *,int *,int ) ;
 int min (int,int ) ;
 int * opalmethod ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int gen_key(struct opal_dev *dev, void *data)
{
 u8 uid[OPAL_UID_LENGTH];
 int err;

 memcpy(uid, dev->prev_data, min(sizeof(uid), dev->prev_d_len));
 kfree(dev->prev_data);
 dev->prev_data = ((void*)0);

 err = cmd_start(dev, uid, opalmethod[OPAL_GENKEY]);

 if (err) {
  pr_debug("Error building gen key command\n");
  return err;

 }

 return finalize_and_send(dev, parse_and_check_status);
}
