
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int cmd; } ;


 int FAST_CLASSIFIER_A_MAX ;
 size_t FAST_CLASSIFIER_A_TUPLE ;


 int NL_OK ;
 int NL_SKIP ;
 int dump_fc_tuple (int ) ;
 int fast_classifier_genl_policy ;
 int genlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int,int ) ;
 int nla_data (struct nlattr*) ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct nl_msg*) ;
 int printf (char*) ;

__attribute__((used)) static int parse_cb(struct nl_msg *msg, void *arg)
{
 struct nlmsghdr *nlh = nlmsg_hdr(msg);
 struct genlmsghdr *gnlh = nlmsg_data(nlh);
 struct nlattr *attrs[FAST_CLASSIFIER_A_MAX];

 genlmsg_parse(nlh, 0, attrs, FAST_CLASSIFIER_A_MAX, fast_classifier_genl_policy);

 switch (gnlh->cmd) {
 case 128:
  printf("Got a offloaded message\n");
  dump_fc_tuple(nla_data(attrs[FAST_CLASSIFIER_A_TUPLE]));
  return NL_OK;
 case 129:
  printf("Got a done message\n");
  dump_fc_tuple(nla_data(attrs[FAST_CLASSIFIER_A_TUPLE]));
  return NL_OK;
 }

 return NL_SKIP;
}
