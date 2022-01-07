
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vid_did_rid_value ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct i2c_client {int adapter; } ;
typedef scalar_t__ s32 ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int TPM_DATA_FIFO_W ;
 int TPM_VID_DID_RID ;
 int i2c_check_functionality (int ,int ) ;
 scalar_t__ i2c_nuvoton_read_buf (struct i2c_client*,int ,int,int*) ;
 scalar_t__ memcmp (scalar_t__*,int const*,int) ;

__attribute__((used)) static int get_vid(struct i2c_client *client, u32 *res)
{
 static const u8 vid_did_rid_value[] = { 0x50, 0x10, 0xfe };
 u32 temp;
 s32 rc;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 rc = i2c_nuvoton_read_buf(client, TPM_VID_DID_RID, 4, (u8 *)&temp);
 if (rc < 0)
  return rc;


 if (memcmp(&temp, vid_did_rid_value, sizeof(vid_did_rid_value))) {





  rc = i2c_nuvoton_read_buf(client, TPM_DATA_FIFO_W, 4,
       (u8 *) (&temp));
  if (rc < 0)
   return rc;


  if (memcmp(&temp, vid_did_rid_value,
      sizeof(vid_did_rid_value)))
   return -ENODEV;
 }

 *res = temp;
 return 0;
}
