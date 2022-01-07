
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int dummy; } ;
struct nl_msg {int dummy; } ;


 int request_single_cb ;
 int unl_genl_request (struct unl*,struct nl_msg*,int ,struct nl_msg**) ;

int unl_genl_request_single(struct unl *unl, struct nl_msg *msg, struct nl_msg **dest)
{
 *dest = ((void*)0);
 return unl_genl_request(unl, msg, request_single_cb, dest);
}
