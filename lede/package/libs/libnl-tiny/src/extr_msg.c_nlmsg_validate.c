
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct nla_policy {int dummy; } ;


 int NLE_MSG_TOOSHORT ;
 int nla_validate (int ,int ,int,struct nla_policy*) ;
 int nlmsg_attrdata (struct nlmsghdr*,int) ;
 int nlmsg_attrlen (struct nlmsghdr*,int) ;
 int nlmsg_valid_hdr (struct nlmsghdr*,int) ;

int nlmsg_validate(struct nlmsghdr *nlh, int hdrlen, int maxtype,
     struct nla_policy *policy)
{
 if (!nlmsg_valid_hdr(nlh, hdrlen))
  return -NLE_MSG_TOOSHORT;

 return nla_validate(nlmsg_attrdata(nlh, hdrlen),
       nlmsg_attrlen(nlh, hdrlen), maxtype, policy);
}
