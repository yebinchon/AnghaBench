
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 struct nl_msg* __nlmsg_alloc (int ) ;
 int default_msg_size ;

struct nl_msg *nlmsg_alloc(void)
{
 return __nlmsg_alloc(default_msg_size);
}
