
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int DRBD_NLA_CFG_REPLY ;
 int EMSGSIZE ;
 int T_info_text ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put_string (struct sk_buff*,int ,char const*) ;

__attribute__((used)) static int drbd_msg_put_info(struct sk_buff *skb, const char *info)
{
 struct nlattr *nla;
 int err = -EMSGSIZE;

 if (!info || !info[0])
  return 0;

 nla = nla_nest_start_noflag(skb, DRBD_NLA_CFG_REPLY);
 if (!nla)
  return err;

 err = nla_put_string(skb, T_info_text, info);
 if (err) {
  nla_nest_cancel(skb, nla);
  return err;
 } else
  nla_nest_end(skb, nla);
 return 0;
}
