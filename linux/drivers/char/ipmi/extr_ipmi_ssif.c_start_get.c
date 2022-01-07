
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssif_info {int ssif_debug; TYPE_1__* client; int recv; scalar_t__ multi_pos; scalar_t__ rtc_us_timer; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int I2C_SMBUS_BLOCK_DATA ;
 int I2C_SMBUS_READ ;
 int SSIF_DEBUG_MSG ;
 int SSIF_IPMI_RESPONSE ;
 int dev_dbg (int *,char*) ;
 int msg_done_handler (struct ssif_info*,int ,int *,int ) ;
 int ssif_i2c_send (struct ssif_info*,int (*) (struct ssif_info*,int ,int *,int ),int ,int ,int ,int ) ;

__attribute__((used)) static void start_get(struct ssif_info *ssif_info)
{
 int rv;

 ssif_info->rtc_us_timer = 0;
 ssif_info->multi_pos = 0;

 rv = ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
     SSIF_IPMI_RESPONSE,
     ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
 if (rv < 0) {

  if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
   dev_dbg(&ssif_info->client->dev,
    "Error from i2c_non_blocking_op(5)\n");

  msg_done_handler(ssif_info, -EIO, ((void*)0), 0);
 }
}
