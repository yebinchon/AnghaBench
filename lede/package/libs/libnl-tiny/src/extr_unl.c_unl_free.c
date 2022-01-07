
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {scalar_t__ cache; scalar_t__ sock; scalar_t__ family_name; } ;


 int free (scalar_t__) ;
 int memset (struct unl*,int ,int) ;
 int nl_cache_free (scalar_t__) ;
 int nl_socket_free (scalar_t__) ;

void unl_free(struct unl *unl)
{
 if (unl->family_name)
  free(unl->family_name);

 if (unl->sock)
  nl_socket_free(unl->sock);

 if (unl->cache)
  nl_cache_free(unl->cache);

 memset(unl, 0, sizeof(*unl));
}
