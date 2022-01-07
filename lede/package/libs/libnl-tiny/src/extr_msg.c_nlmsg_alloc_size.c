
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 struct nl_msg* __nlmsg_alloc (size_t) ;

struct nl_msg *nlmsg_alloc_size(size_t max)
{
 return __nlmsg_alloc(max);
}
