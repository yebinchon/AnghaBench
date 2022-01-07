
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct crypto_user_alg {int dummy; } ;
struct crypto_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct crypto_alg {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int CRYPTO_MSG_GETALG ;
 int EMSGSIZE ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int crypto_report_one (struct crypto_alg*,struct crypto_user_alg*,struct sk_buff*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct crypto_user_alg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int crypto_report_alg(struct crypto_alg *alg,
        struct crypto_dump_info *info)
{
 struct sk_buff *in_skb = info->in_skb;
 struct sk_buff *skb = info->out_skb;
 struct nlmsghdr *nlh;
 struct crypto_user_alg *ualg;
 int err = 0;

 nlh = nlmsg_put(skb, NETLINK_CB(in_skb).portid, info->nlmsg_seq,
   CRYPTO_MSG_GETALG, sizeof(*ualg), info->nlmsg_flags);
 if (!nlh) {
  err = -EMSGSIZE;
  goto out;
 }

 ualg = nlmsg_data(nlh);

 err = crypto_report_one(alg, ualg, skb);
 if (err) {
  nlmsg_cancel(skb, nlh);
  goto out;
 }

 nlmsg_end(skb, nlh);

out:
 return err;
}
