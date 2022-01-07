
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 int NL_SKIP ;
 int nlmsg_get (struct nl_msg*) ;

__attribute__((used)) static int request_single_cb(struct nl_msg *msg, void *arg)
{
 struct nl_msg **dest = arg;

 if (!*dest) {
  nlmsg_get(msg);
  *dest = msg;
 }
 return NL_SKIP;
}
