
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_private {int dummy; } ;


 scalar_t__ BT_CAL_HDR_LEN ;
 int BT_CMD_LOAD_CONFIG_DATA ;
 int BT_ERR (char*) ;
 int DUMP_PREFIX_OFFSET ;
 int btmrvl_send_sync_cmd (struct btmrvl_private*,int ,int*,scalar_t__) ;
 int print_hex_dump_bytes (char*,int ,int*,scalar_t__) ;

__attribute__((used)) static int btmrvl_download_cal_data(struct btmrvl_private *priv,
        u8 *data, int len)
{
 int ret;

 data[0] = 0x00;
 data[1] = 0x00;
 data[2] = 0x00;
 data[3] = len;

 print_hex_dump_bytes("Calibration data: ",
        DUMP_PREFIX_OFFSET, data, BT_CAL_HDR_LEN + len);

 ret = btmrvl_send_sync_cmd(priv, BT_CMD_LOAD_CONFIG_DATA, data,
       BT_CAL_HDR_LEN + len);
 if (ret)
  BT_ERR("Failed to download calibration data");

 return 0;
}
