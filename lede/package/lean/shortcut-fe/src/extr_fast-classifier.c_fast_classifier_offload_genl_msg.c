
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sfe_connection {int offload_permit; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct fast_classifier_tuple {scalar_t__ ethertype; int proto; int dport; int sport; int dst_saddr; int src_saddr; int dmac; int smac; } ;
typedef int sfe_ip_addr_t ;


 scalar_t__ AF_INET ;
 int DEBUG_TRACE (char*,...) ;
 size_t FAST_CLASSIFIER_A_TUPLE ;
 int atomic_inc (int *) ;
 struct sfe_connection* fast_classifier_sb_find_conn (int *,int *,int ,int ,int ,int) ;
 struct fast_classifier_tuple* nla_data (struct nlattr*) ;
 int offload_msgs ;
 int offload_no_match_msgs ;
 int sfe_connections_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
fast_classifier_offload_genl_msg(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr *na;
 struct fast_classifier_tuple *fc_msg;
 struct sfe_connection *conn;

 na = info->attrs[FAST_CLASSIFIER_A_TUPLE];
 fc_msg = nla_data(na);

 DEBUG_TRACE("want to offload: %d-%d, %pIS, %pIS, %d, %d SMAC=%pM DMAC=%pM\n",
  fc_msg->ethertype,
  fc_msg->proto,
  &fc_msg->src_saddr,
  &fc_msg->dst_saddr,
  fc_msg->sport,
  fc_msg->dport,
  fc_msg->smac,
  fc_msg->dmac);

 spin_lock_bh(&sfe_connections_lock);
 conn = fast_classifier_sb_find_conn((sfe_ip_addr_t *)&fc_msg->src_saddr,
      (sfe_ip_addr_t *)&fc_msg->dst_saddr,
      fc_msg->sport,
      fc_msg->dport,
      fc_msg->proto,
      (fc_msg->ethertype == AF_INET));
 if (!conn) {
  spin_unlock_bh(&sfe_connections_lock);
  DEBUG_TRACE("REQUEST OFFLOAD NO MATCH\n");
  atomic_inc(&offload_no_match_msgs);
  return 0;
 }

 conn->offload_permit = 1;
 spin_unlock_bh(&sfe_connections_lock);
 atomic_inc(&offload_msgs);

 DEBUG_TRACE("INFO: calling sfe rule creation!\n");
 return 0;
}
