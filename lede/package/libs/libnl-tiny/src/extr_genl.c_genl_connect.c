
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;


 int NETLINK_GENERIC ;
 int nl_connect (struct nl_sock*,int ) ;

int genl_connect(struct nl_sock *sk)
{
 return nl_connect(sk, NETLINK_GENERIC);
}
