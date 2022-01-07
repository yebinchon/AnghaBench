
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; void* nlmsg_seq; void* nlmsg_pid; } ;
struct nl_msg {TYPE_1__* nm_nlh; } ;
struct TYPE_2__ {scalar_t__ nlmsg_len; } ;


 int BUG () ;
 int NLMSG_ALIGNTO ;
 scalar_t__ NLMSG_HDRLEN ;
 int NL_DBG (int,char*,struct nl_msg*,int,int,void*,void*) ;
 int * nlmsg_reserve (struct nl_msg*,int,int ) ;

struct nlmsghdr *nlmsg_put(struct nl_msg *n, uint32_t pid, uint32_t seq,
      int type, int payload, int flags)
{
 struct nlmsghdr *nlh;

 if (n->nm_nlh->nlmsg_len < NLMSG_HDRLEN)
  BUG();

 nlh = (struct nlmsghdr *) n->nm_nlh;
 nlh->nlmsg_type = type;
 nlh->nlmsg_flags = flags;
 nlh->nlmsg_pid = pid;
 nlh->nlmsg_seq = seq;

 NL_DBG(2, "msg %p: Added netlink header type=%d, flags=%d, pid=%d, "
    "seq=%d\n", n, type, flags, pid, seq);

 if (payload > 0 &&
     nlmsg_reserve(n, payload, NLMSG_ALIGNTO) == ((void*)0))
  return ((void*)0);

 return nlh;
}
