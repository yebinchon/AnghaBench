
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tagged; } ;
typedef TYPE_1__ git_pobject ;
struct TYPE_5__ {int object_ix; } ;
typedef TYPE_2__ git_packbuilder ;
typedef int git_oid ;


 int GIT_UNUSED (char const*) ;
 TYPE_1__* git_oidmap_get (int ,int *) ;

__attribute__((used)) static int cb_tag_foreach(const char *name, git_oid *oid, void *data)
{
 git_packbuilder *pb = data;
 git_pobject *po;

 GIT_UNUSED(name);

 if ((po = git_oidmap_get(pb->object_ix, oid)) == ((void*)0))
  return 0;

 po->tagged = 1;



 return 0;
}
