
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct genlmsghdr {int cmd; int version; } ;
typedef int hdr ;


 int nl_send_simple (struct nl_sock*,int,int,struct genlmsghdr*,int) ;

int genl_send_simple(struct nl_sock *sk, int family, int cmd,
       int version, int flags)
{
 struct genlmsghdr hdr = {
  .cmd = cmd,
  .version = version,
 };

 return nl_send_simple(sk, family, flags, &hdr, sizeof(hdr));
}
