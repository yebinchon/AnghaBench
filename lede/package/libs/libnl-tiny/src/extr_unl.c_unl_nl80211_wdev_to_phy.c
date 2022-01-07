
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;


 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_GET_INTERFACE ;
 int NLA_PUT_U32 (struct nl_msg*,int ,int) ;
 int nla_get_u32 (struct nlattr*) ;
 int nlmsg_free (struct nl_msg*) ;
 struct nlattr* unl_find_attr (struct unl*,struct nl_msg*,int ) ;
 struct nl_msg* unl_genl_msg (struct unl*,int ,int) ;
 scalar_t__ unl_genl_request_single (struct unl*,struct nl_msg*,struct nl_msg**) ;

int unl_nl80211_wdev_to_phy(struct unl *unl, int wdev)
{
 struct nl_msg *msg;
 struct nlattr *attr;
 int ret = -1;

 msg = unl_genl_msg(unl, NL80211_CMD_GET_INTERFACE, 0);
 if (!msg)
  return -1;

 NLA_PUT_U32(msg, NL80211_ATTR_IFINDEX, wdev);
 if (unl_genl_request_single(unl, msg, &msg) < 0)
  return -1;

 attr = unl_find_attr(unl, msg, NL80211_ATTR_WIPHY);
 if (!attr)
  goto out;

 ret = nla_get_u32(attr);
out:
nla_put_failure:
 nlmsg_free(msg);
 return ret;
}
