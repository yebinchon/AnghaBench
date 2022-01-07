
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; int i; } ;
struct switch_val {scalar_t__ err; TYPE_1__ value; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int NL_SKIP ;
 scalar_t__ SWITCH_ATTR_MAX ;
 size_t SWITCH_ATTR_OP_VALUE_INT ;
 size_t SWITCH_ATTR_OP_VALUE_LINK ;
 size_t SWITCH_ATTR_OP_VALUE_PORTS ;
 size_t SWITCH_ATTR_OP_VALUE_STR ;
 int genlmsg_attrdata (struct genlmsghdr*,int ) ;
 int genlmsg_attrlen (struct genlmsghdr*,int ) ;
 int nla_get_string (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 scalar_t__ nla_parse (scalar_t__*,scalar_t__,int ,int ,int *) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct nl_msg*) ;
 scalar_t__ store_link_val (struct nl_msg*,scalar_t__,struct switch_val*) ;
 scalar_t__ store_port_val (struct nl_msg*,scalar_t__,struct switch_val*) ;
 int strdup (int ) ;
 scalar_t__* tb ;

__attribute__((used)) static int
store_val(struct nl_msg *msg, void *arg)
{
 struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));
 struct switch_val *val = arg;

 if (!val)
  goto error;

 if (nla_parse(tb, SWITCH_ATTR_MAX - 1, genlmsg_attrdata(gnlh, 0),
   genlmsg_attrlen(gnlh, 0), ((void*)0)) < 0) {
  goto error;
 }

 if (tb[SWITCH_ATTR_OP_VALUE_INT])
  val->value.i = nla_get_u32(tb[SWITCH_ATTR_OP_VALUE_INT]);
 else if (tb[SWITCH_ATTR_OP_VALUE_STR])
  val->value.s = strdup(nla_get_string(tb[SWITCH_ATTR_OP_VALUE_STR]));
 else if (tb[SWITCH_ATTR_OP_VALUE_PORTS])
  val->err = store_port_val(msg, tb[SWITCH_ATTR_OP_VALUE_PORTS], val);
 else if (tb[SWITCH_ATTR_OP_VALUE_LINK])
  val->err = store_link_val(msg, tb[SWITCH_ATTR_OP_VALUE_LINK], val);

 val->err = 0;
 return 0;

error:
 return NL_SKIP;
}
