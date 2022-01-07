
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int E2BIG ;
 int EINVAL ;
 int ENODEV ;
 int IPMI_MAX_MSG_LENGTH ;
 int SSIF_IPMI_REQUEST ;
 int SSIF_SEND_RETRIES ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,unsigned char*) ;
 int read_response (struct i2c_client*,unsigned char*) ;

__attribute__((used)) static int do_cmd(struct i2c_client *client, int len, unsigned char *msg,
    int *resp_len, unsigned char *resp)
{
 int retry_cnt;
 int ret;

 retry_cnt = SSIF_SEND_RETRIES;
 retry1:
 ret = i2c_smbus_write_block_data(client, SSIF_IPMI_REQUEST, len, msg);
 if (ret) {
  retry_cnt--;
  if (retry_cnt > 0)
   goto retry1;
  return -ENODEV;
 }

 ret = read_response(client, resp);
 if (ret > 0) {

  if (ret < 3 ||
      (resp[0] != (msg[0] | (1 << 2))) ||
      (resp[1] != msg[1]))
   ret = -EINVAL;
  else if (ret > IPMI_MAX_MSG_LENGTH) {
   ret = -E2BIG;
  } else {
   *resp_len = ret;
   ret = 0;
  }
 }

 return ret;
}
