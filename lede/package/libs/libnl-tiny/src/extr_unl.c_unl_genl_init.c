
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int family; int cache; int sock; int family_name; int hdrlen; } ;
struct genlmsghdr {int dummy; } ;


 int NLMSG_ALIGN (int) ;
 scalar_t__ genl_connect (int ) ;
 scalar_t__ genl_ctrl_alloc_cache (int ,int *) ;
 int genl_ctrl_search_by_name (int ,char const*) ;
 int memset (struct unl*,int ,int) ;
 int strdup (char const*) ;
 int unl_free (struct unl*) ;
 scalar_t__ unl_init (struct unl*) ;

int unl_genl_init(struct unl *unl, const char *family)
{
 memset(unl, 0, sizeof(*unl));

 if (unl_init(unl))
  goto error_out;

 unl->hdrlen = NLMSG_ALIGN(sizeof(struct genlmsghdr));
 unl->family_name = strdup(family);
 if (!unl->family_name)
  goto error;

 if (genl_connect(unl->sock))
  goto error;

 if (genl_ctrl_alloc_cache(unl->sock, &unl->cache))
  goto error;

 unl->family = genl_ctrl_search_by_name(unl->cache, family);
 if (!unl->family)
  goto error;

 return 0;

error:
 unl_free(unl);
error_out:
 return -1;
}
