
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssif_info {int got_alert; int data_len; int* multi_data; int* data; int multi_len; int multi_pos; int ssif_debug; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int I2C_SMBUS_BLOCK_DATA ;
 int I2C_SMBUS_WRITE ;
 int SSIF_DEBUG_MSG ;
 int SSIF_IPMI_MULTI_PART_REQUEST_START ;
 int SSIF_IPMI_REQUEST ;
 int dev_dbg (int *,char*) ;
 int msg_written_handler ;
 int ssif_i2c_send (struct ssif_info*,int ,int ,int,int*,int ) ;

__attribute__((used)) static int start_resend(struct ssif_info *ssif_info)
{
 int rv;
 int command;

 ssif_info->got_alert = 0;

 if (ssif_info->data_len > 32) {
  command = SSIF_IPMI_MULTI_PART_REQUEST_START;
  ssif_info->multi_data = ssif_info->data;
  ssif_info->multi_len = ssif_info->data_len;





  ssif_info->multi_pos = 32;
  ssif_info->data[0] = 32;
 } else {
  ssif_info->multi_data = ((void*)0);
  command = SSIF_IPMI_REQUEST;
  ssif_info->data[0] = ssif_info->data_len;
 }

 rv = ssif_i2c_send(ssif_info, msg_written_handler, I2C_SMBUS_WRITE,
     command, ssif_info->data, I2C_SMBUS_BLOCK_DATA);
 if (rv && (ssif_info->ssif_debug & SSIF_DEBUG_MSG))
  dev_dbg(&ssif_info->client->dev,
   "Error from i2c_non_blocking_op(4)\n");
 return rv;
}
