
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int crypto_del_default_rng () ;
 int netlink_capable (struct sk_buff*,int ) ;

__attribute__((used)) static int crypto_del_rng(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct nlattr **attrs)
{
 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;
 return crypto_del_default_rng();
}
