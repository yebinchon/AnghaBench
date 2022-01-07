
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_len; } ;
struct genlmsghdr {int dummy; } ;


 int GENL_HDRLEN ;
 int NLMSG_HDRLEN ;

int genlmsg_len(const struct genlmsghdr *gnlh)
{
 struct nlmsghdr *nlh = (struct nlmsghdr *)((unsigned char *)gnlh -
       NLMSG_HDRLEN);
 return (nlh->nlmsg_len - GENL_HDRLEN - NLMSG_HDRLEN);
}
