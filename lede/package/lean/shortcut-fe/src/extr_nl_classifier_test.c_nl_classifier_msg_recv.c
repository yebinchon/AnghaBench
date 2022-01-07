
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int cmd; } ;


 int NL_CLASSIFIER_ATTR_MAX ;
 size_t NL_CLASSIFIER_ATTR_TUPLE ;


 int NL_CLASSIFIER_GENL_HDRSIZE ;
 int NL_OK ;
 int NL_SKIP ;
 int genlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int ,int ) ;
 int nl_classifier_dump_nl_tuple (int ) ;
 int nl_classifier_genl_policy ;
 int nla_data (struct nlattr*) ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct nl_msg*) ;
 int printf (char*,...) ;

int nl_classifier_msg_recv(struct nl_msg *msg, void *arg)
{
 struct nlmsghdr *nlh = nlmsg_hdr(msg);
 struct genlmsghdr *gnlh = nlmsg_data(nlh);
 struct nlattr *attrs[(NL_CLASSIFIER_ATTR_MAX+1)];

 genlmsg_parse(nlh, NL_CLASSIFIER_GENL_HDRSIZE, attrs, NL_CLASSIFIER_ATTR_MAX, nl_classifier_genl_policy);

 switch (gnlh->cmd) {
 case 129:
  printf("Acceleration successful:\n");
  nl_classifier_dump_nl_tuple(nla_data(attrs[NL_CLASSIFIER_ATTR_TUPLE]));
  return NL_OK;
 case 128:
  printf("Connection is closed:\n");
  nl_classifier_dump_nl_tuple(nla_data(attrs[NL_CLASSIFIER_ATTR_TUPLE]));
  return NL_OK;
 default:
  printf("nl classifier received unknow message %d\n", gnlh->cmd);
 }

 return NL_SKIP;
}
