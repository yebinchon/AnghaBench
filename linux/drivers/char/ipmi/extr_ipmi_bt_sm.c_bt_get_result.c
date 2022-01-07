
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {int read_count; unsigned char* read_data; TYPE_1__* io; scalar_t__ truncated; } ;
struct TYPE_2__ {int dev; } ;


 int BT_DEBUG_MSG ;
 unsigned char IPMI_ERR_MSG_TRUNCATED ;
 int IPMI_ERR_UNSPECIFIED ;
 int IPMI_MAX_MSG_LENGTH ;
 int bt_debug ;
 int dev_dbg (int ,char*,int) ;
 int force_result (struct si_sm_data*,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static int bt_get_result(struct si_sm_data *bt,
    unsigned char *data,
    unsigned int length)
{
 int i, msg_len;

 msg_len = bt->read_count - 2;
 if (msg_len < 3 || msg_len > IPMI_MAX_MSG_LENGTH) {
  force_result(bt, IPMI_ERR_UNSPECIFIED);
  msg_len = 3;
 }
 data[0] = bt->read_data[1];
 data[1] = bt->read_data[3];
 if (length < msg_len || bt->truncated) {
  data[2] = IPMI_ERR_MSG_TRUNCATED;
  msg_len = 3;
 } else
  memcpy(data + 2, bt->read_data + 4, msg_len - 2);

 if (bt_debug & BT_DEBUG_MSG) {
  dev_dbg(bt->io->dev, "result %d bytes:", msg_len);
  for (i = 0; i < msg_len; i++)
   pr_cont(" %02x", data[i]);
  pr_cont("\n");
 }
 return msg_len;
}
