
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int GENL_HDRLEN ;
 scalar_t__ NLMSG_ALIGN (int) ;
 scalar_t__ genlmsg_len (struct genlmsghdr*) ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_valid_hdr (struct nlmsghdr*,int ) ;

int genlmsg_valid_hdr(struct nlmsghdr *nlh, int hdrlen)
{
 struct genlmsghdr *ghdr;

 if (!nlmsg_valid_hdr(nlh, GENL_HDRLEN))
  return 0;

 ghdr = nlmsg_data(nlh);
 if (genlmsg_len(ghdr) < NLMSG_ALIGN(hdrlen))
  return 0;

 return 1;
}
