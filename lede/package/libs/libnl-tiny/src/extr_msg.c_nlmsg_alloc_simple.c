
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nl_msg {int dummy; } ;


 int NL_DBG (int,char*,struct nl_msg*) ;
 struct nl_msg* nlmsg_inherit (struct nlmsghdr*) ;

struct nl_msg *nlmsg_alloc_simple(int nlmsgtype, int flags)
{
 struct nl_msg *msg;
 struct nlmsghdr nlh = {
  .nlmsg_type = nlmsgtype,
  .nlmsg_flags = flags,
 };

 msg = nlmsg_inherit(&nlh);
 if (msg)
  NL_DBG(2, "msg %p: Allocated new simple message\n", msg);

 return msg;
}
