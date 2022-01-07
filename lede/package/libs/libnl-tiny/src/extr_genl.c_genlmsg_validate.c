
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct nla_policy {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int NLE_MSG_TOOSHORT ;
 int genlmsg_attrdata (struct genlmsghdr*,int) ;
 int genlmsg_attrlen (struct genlmsghdr*,int) ;
 int genlmsg_valid_hdr (struct nlmsghdr*,int) ;
 int nla_validate (int ,int ,int,struct nla_policy*) ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;

int genlmsg_validate(struct nlmsghdr *nlh, int hdrlen, int maxtype,
     struct nla_policy *policy)
{
 struct genlmsghdr *ghdr;

 if (!genlmsg_valid_hdr(nlh, hdrlen))
  return -NLE_MSG_TOOSHORT;

 ghdr = nlmsg_data(nlh);
 return nla_validate(genlmsg_attrdata(ghdr, hdrlen),
       genlmsg_attrlen(ghdr, hdrlen), maxtype, policy);
}
