
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int max_xmit_msg_size; int cmd8_works; } ;
struct i2c_client {int dev; } ;
typedef int msg ;


 unsigned char IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SSIF_IPMI_MULTI_PART_REQUEST_END ;
 int SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int read_response (struct i2c_client*,unsigned char*) ;
 int start_multipart_test (struct i2c_client*,unsigned char*,int) ;

__attribute__((used)) static void test_multipart_messages(struct i2c_client *client,
        struct ssif_info *ssif_info,
        unsigned char *resp)
{
 unsigned char msg[65];
 int ret;
 bool do_middle;

 if (ssif_info->max_xmit_msg_size <= 32)
  return;

 do_middle = ssif_info->max_xmit_msg_size > 63;

 memset(msg, 0, sizeof(msg));
 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_GET_DEVICE_ID_CMD;
 ret = start_multipart_test(client, msg, do_middle);
 if (ret)
  goto out_no_multi_part;

 ret = i2c_smbus_write_block_data(client,
      SSIF_IPMI_MULTI_PART_REQUEST_END,
      1, msg + 64);

 if (!ret)
  ret = read_response(client, resp);

 if (ret > 0) {

  ssif_info->cmd8_works = 1;
  return;
 }

 ret = start_multipart_test(client, msg, do_middle);
 if (ret) {
  dev_err(&client->dev, "Second multipart test failed.\n");
  goto out_no_multi_part;
 }

 ret = i2c_smbus_write_block_data(client,
      SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE,
      0, msg + 64);
 if (!ret)
  ret = read_response(client, resp);
 if (ret > 0)

  return;


 if (ssif_info->max_xmit_msg_size > 63)
  ssif_info->max_xmit_msg_size = 63;
 return;

out_no_multi_part:
 ssif_info->max_xmit_msg_size = 32;
 return;
}
