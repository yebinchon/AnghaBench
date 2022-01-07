
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct genl_family_grp {int list; int name; int id; } ;
struct genl_family {int gf_mc_grps; } ;


 scalar_t__ GENL_NAMSIZ ;
 int NLE_NOMEM ;
 struct genl_family_grp* calloc (int,int) ;
 int nl_list_add_tail (int *,int *) ;
 int strncpy (int ,char const*,scalar_t__) ;

int genl_family_add_grp(struct genl_family *family, uint32_t id,
   const char *name)
{
 struct genl_family_grp *grp;

 grp = calloc(1, sizeof(*grp));
 if (grp == ((void*)0))
  return -NLE_NOMEM;

 grp->id = id;
 strncpy(grp->name, name, GENL_NAMSIZ - 1);

 nl_list_add_tail(&grp->list, &family->gf_mc_grps);

 return 0;
}
