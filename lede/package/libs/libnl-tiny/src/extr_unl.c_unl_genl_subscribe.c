
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int sock; } ;


 int nl_socket_add_membership (int ,int) ;
 int unl_genl_multicast_id (struct unl*,char const*) ;

int unl_genl_subscribe(struct unl *unl, const char *name)
{
 int mcid;

 mcid = unl_genl_multicast_id(unl, name);
 if (mcid < 0)
  return mcid;

 return nl_socket_add_membership(unl->sock, mcid);
}
