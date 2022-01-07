
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_flags; int nlmsg_type; } ;
struct nl_msg {struct nlmsghdr* nm_nlh; } ;


 struct nl_msg* nlmsg_alloc () ;

struct nl_msg *nlmsg_inherit(struct nlmsghdr *hdr)
{
 struct nl_msg *nm;

 nm = nlmsg_alloc();
 if (nm && hdr) {
  struct nlmsghdr *new = nm->nm_nlh;

  new->nlmsg_type = hdr->nlmsg_type;
  new->nlmsg_flags = hdr->nlmsg_flags;
  new->nlmsg_seq = hdr->nlmsg_seq;
  new->nlmsg_pid = hdr->nlmsg_pid;
 }

 return nm;
}
