
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct gsw_mt753x {int (* mmd_write ) (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;int (* mii_write ) (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct genl_info {int dummy; } ;
typedef scalar_t__ s32 ;


 int MT753X_ATTR_TYPE_DEVAD ;
 int MT753X_ATTR_TYPE_PHY ;
 int MT753X_ATTR_TYPE_REG ;
 int MT753X_ATTR_TYPE_VAL ;
 int MT753X_CMD_WRITE ;
 scalar_t__ mt753x_nl_get_s32 (struct genl_info*,int ,int) ;
 scalar_t__ mt753x_nl_get_u32 (struct genl_info*,int ,scalar_t__*) ;
 int mt753x_nl_prepare_reply (struct genl_info*,int ,struct sk_buff**) ;
 int mt753x_nl_send_reply (struct sk_buff*,struct genl_info*) ;
 int mt753x_reg_write (struct gsw_mt753x*,scalar_t__,scalar_t__) ;
 int nla_put_s32 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_free (struct sk_buff*) ;
 int stub1 (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ;
 int stub2 (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int mt753x_nl_reply_write(struct genl_info *info, struct gsw_mt753x *gsw)
{
 struct sk_buff *rep_skb = ((void*)0);
 s32 phy, devad, reg;
 u32 value;
 int ret = 0;

 phy = mt753x_nl_get_s32(info, MT753X_ATTR_TYPE_PHY, -1);
 devad = mt753x_nl_get_s32(info, MT753X_ATTR_TYPE_DEVAD, -1);
 reg = mt753x_nl_get_s32(info, MT753X_ATTR_TYPE_REG, -1);

 if (mt753x_nl_get_u32(info, MT753X_ATTR_TYPE_VAL, &value))
  goto err;

 if (reg < 0)
  goto err;

 ret = mt753x_nl_prepare_reply(info, MT753X_CMD_WRITE, &rep_skb);
 if (ret < 0)
  goto err;

 if (phy >= 0) {
  if (devad < 0)
   gsw->mii_write(gsw, phy, reg, value);
  else
   gsw->mmd_write(gsw, phy, devad, reg, value);
 } else {
  mt753x_reg_write(gsw, reg, value);
 }

 ret = nla_put_s32(rep_skb, MT753X_ATTR_TYPE_REG, reg);
 if (ret < 0)
  goto err;

 ret = nla_put_s32(rep_skb, MT753X_ATTR_TYPE_VAL, value);
 if (ret < 0)
  goto err;

 return mt753x_nl_send_reply(rep_skb, info);

err:
 if (rep_skb)
  nlmsg_free(rep_skb);

 return ret;
}
