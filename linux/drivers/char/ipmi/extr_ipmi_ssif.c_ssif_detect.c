
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int type; } ;


 int DEVICE_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;
 unsigned char IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 int do_cmd (struct i2c_client*,int,unsigned char*,int*,unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 unsigned char *resp;
 unsigned char msg[3];
 int rv;
 int len;

 resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;


 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_GET_DEVICE_ID_CMD;
 rv = do_cmd(client, 2, msg, &len, resp);
 if (rv)
  rv = -ENODEV;
 else
  strlcpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
 kfree(resp);
 return rv;
}
