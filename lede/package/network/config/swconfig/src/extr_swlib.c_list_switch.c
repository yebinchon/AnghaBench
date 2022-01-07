
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int NL_SKIP ;
 size_t SWITCH_ATTR_ALIAS ;
 size_t SWITCH_ATTR_DEV_NAME ;
 int SWITCH_ATTR_MAX ;
 size_t SWITCH_ATTR_NAME ;
 int genlmsg_attrdata (struct genlmsghdr*,int ) ;
 int genlmsg_attrlen (struct genlmsghdr*,int ) ;
 char* nla_get_string (int ) ;
 scalar_t__ nla_parse (int *,int ,int ,int ,int *) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct nl_msg*) ;
 int printf (char*,char*,char*) ;
 int * tb ;

__attribute__((used)) static int
list_switch(struct nl_msg *msg, void *arg)
{
 struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));

 if (nla_parse(tb, SWITCH_ATTR_MAX, genlmsg_attrdata(gnlh, 0), genlmsg_attrlen(gnlh, 0), ((void*)0)) < 0)
  goto done;

 if (!tb[SWITCH_ATTR_DEV_NAME] || !tb[SWITCH_ATTR_NAME])
  goto done;

 printf("Found: %s - %s\n", nla_get_string(tb[SWITCH_ATTR_DEV_NAME]),
  nla_get_string(tb[SWITCH_ATTR_ALIAS]));

done:
 return NL_SKIP;
}
