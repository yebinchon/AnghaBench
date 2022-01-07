
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct switch_port_link* link; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_port_link {int link; int duplex; int aneg; int tx_flow; int rx_flow; int eee; int speed; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;


 int SWITCH_LINK_ATTR_MAX ;
 size_t SWITCH_LINK_FLAG_ANEG ;
 size_t SWITCH_LINK_FLAG_DUPLEX ;
 size_t SWITCH_LINK_FLAG_EEE_1000BASET ;
 size_t SWITCH_LINK_FLAG_EEE_100BASET ;
 size_t SWITCH_LINK_FLAG_LINK ;
 size_t SWITCH_LINK_FLAG_RX_FLOW ;
 size_t SWITCH_LINK_FLAG_TX_FLOW ;
 size_t SWITCH_LINK_SPEED ;
 int SWLIB_LINK_FLAG_EEE_1000BASET ;
 int SWLIB_LINK_FLAG_EEE_100BASET ;
 int link_policy ;
 struct switch_port_link* malloc (int) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;

__attribute__((used)) static int
store_link_val(struct nl_msg *msg, struct nlattr *nla, struct switch_val *val)
{
 struct nlattr *tb[SWITCH_LINK_ATTR_MAX + 1];
 struct switch_port_link *link;
 int err = 0;

 if (!val->value.link)
  val->value.link = malloc(sizeof(struct switch_port_link));

 err = nla_parse_nested(tb, SWITCH_LINK_ATTR_MAX, nla, link_policy);
 if (err < 0)
  goto out;

 link = val->value.link;
 link->link = !!tb[SWITCH_LINK_FLAG_LINK];
 link->duplex = !!tb[SWITCH_LINK_FLAG_DUPLEX];
 link->aneg = !!tb[SWITCH_LINK_FLAG_ANEG];
 link->tx_flow = !!tb[SWITCH_LINK_FLAG_TX_FLOW];
 link->rx_flow = !!tb[SWITCH_LINK_FLAG_RX_FLOW];
 link->speed = nla_get_u32(tb[SWITCH_LINK_SPEED]);
 link->eee = 0;
 if (tb[SWITCH_LINK_FLAG_EEE_100BASET])
  link->eee |= SWLIB_LINK_FLAG_EEE_100BASET;
 if (tb[SWITCH_LINK_FLAG_EEE_1000BASET])
  link->eee |= SWLIB_LINK_FLAG_EEE_1000BASET;

out:
 return err;
}
