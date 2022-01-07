
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cn_msg {int len; } ;
typedef int gfp_t ;


 int cn_netlink_send_mult (struct cn_msg*,int ,int ,int ,int ) ;

int cn_netlink_send(struct cn_msg *msg, u32 portid, u32 __group,
 gfp_t gfp_mask)
{
 return cn_netlink_send_mult(msg, msg->len, portid, __group, gfp_mask);
}
