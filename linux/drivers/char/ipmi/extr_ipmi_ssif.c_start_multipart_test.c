
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE ;
 int SSIF_IPMI_MULTI_PART_REQUEST_START ;
 int SSIF_SEND_RETRIES ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,unsigned char*) ;

__attribute__((used)) static int start_multipart_test(struct i2c_client *client,
    unsigned char *msg, bool do_middle)
{
 int retry_cnt = SSIF_SEND_RETRIES, ret;

retry_write:
 ret = i2c_smbus_write_block_data(client,
      SSIF_IPMI_MULTI_PART_REQUEST_START,
      32, msg);
 if (ret) {
  retry_cnt--;
  if (retry_cnt > 0)
   goto retry_write;
  dev_err(&client->dev, "Could not write multi-part start, though the BMC said it could handle it.  Just limit sends to one part.\n");
  return ret;
 }

 if (!do_middle)
  return 0;

 ret = i2c_smbus_write_block_data(client,
      SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE,
      32, msg + 32);
 if (ret) {
  dev_err(&client->dev, "Could not write multi-part middle, though the BMC said it could handle it.  Just limit sends to one part.\n");
  return ret;
 }

 return 0;
}
