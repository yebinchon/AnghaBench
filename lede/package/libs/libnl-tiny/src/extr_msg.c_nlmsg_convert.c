
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_len; } ;
struct nl_msg {int nm_nlh; } ;


 int NLMSG_ALIGN (int ) ;
 struct nl_msg* __nlmsg_alloc (int ) ;
 int memcpy (int ,struct nlmsghdr*,int ) ;
 int nlmsg_free (struct nl_msg*) ;

struct nl_msg *nlmsg_convert(struct nlmsghdr *hdr)
{
 struct nl_msg *nm;

 nm = __nlmsg_alloc(NLMSG_ALIGN(hdr->nlmsg_len));
 if (!nm)
  goto errout;

 memcpy(nm->nm_nlh, hdr, hdr->nlmsg_len);

 return nm;
errout:
 nlmsg_free(nm);
 return ((void*)0);
}
