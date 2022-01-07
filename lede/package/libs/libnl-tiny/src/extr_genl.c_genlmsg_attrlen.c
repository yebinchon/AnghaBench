
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genlmsghdr {int dummy; } ;


 int NLMSG_ALIGN (int) ;
 int genlmsg_len (struct genlmsghdr const*) ;

int genlmsg_attrlen(const struct genlmsghdr *gnlh, int hdrlen)
{
 return genlmsg_len(gnlh) - NLMSG_ALIGN(hdrlen);
}
