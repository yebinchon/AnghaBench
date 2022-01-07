
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int waiting_alert; int got_alert; scalar_t__ curr_msg; int retry_timer; } ;
struct i2c_client {int dummy; } ;
typedef enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;


 int I2C_PROTOCOL_SMBUS_ALERT ;
 int alerts ;
 int del_timer (int *) ;
 struct ssif_info* i2c_get_clientdata (struct i2c_client*) ;
 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 int ssif_inc_stat (struct ssif_info*,int ) ;
 int start_get (struct ssif_info*) ;

__attribute__((used)) static void ssif_alert(struct i2c_client *client, enum i2c_alert_protocol type,
         unsigned int data)
{
 struct ssif_info *ssif_info = i2c_get_clientdata(client);
 unsigned long oflags, *flags;
 bool do_get = 0;

 if (type != I2C_PROTOCOL_SMBUS_ALERT)
  return;

 ssif_inc_stat(ssif_info, alerts);

 flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
 if (ssif_info->waiting_alert) {
  ssif_info->waiting_alert = 0;
  del_timer(&ssif_info->retry_timer);
  do_get = 1;
 } else if (ssif_info->curr_msg) {
  ssif_info->got_alert = 1;
 }
 ipmi_ssif_unlock_cond(ssif_info, flags);
 if (do_get)
  start_get(ssif_info);
}
