
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilly_endpoint {int dev; } ;


 int dev_warn (int ,char*,int,int,int,int,int) ;

__attribute__((used)) static void malformed_message(struct xilly_endpoint *endpoint, u32 *buf)
{
 int opcode;
 int msg_channel, msg_bufno, msg_data, msg_dir;

 opcode = (buf[0] >> 24) & 0xff;
 msg_dir = buf[0] & 1;
 msg_channel = (buf[0] >> 1) & 0x7ff;
 msg_bufno = (buf[0] >> 12) & 0x3ff;
 msg_data = buf[1] & 0xfffffff;

 dev_warn(endpoint->dev,
   "Malformed message (skipping): opcode=%d, channel=%03x, dir=%d, bufno=%03x, data=%07x\n",
   opcode, msg_channel, msg_dir, msg_bufno, msg_data);
}
