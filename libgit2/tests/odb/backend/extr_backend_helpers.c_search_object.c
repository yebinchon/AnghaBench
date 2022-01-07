
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {scalar_t__ oid; } ;
typedef TYPE_1__ fake_object ;
struct TYPE_6__ {TYPE_1__* objects; } ;
typedef TYPE_2__ fake_backend ;


 int GIT_EAMBIGUOUS ;
 int GIT_ENOTFOUND ;
 int GIT_OK ;
 int git_oid_fromstr (int *,scalar_t__) ;
 scalar_t__ git_oid_ncmp (int *,int const*,size_t) ;

__attribute__((used)) static int search_object(const fake_object **out, fake_backend *fake, const git_oid *oid, size_t len)
{
 const fake_object *obj = fake->objects, *found = ((void*)0);

 while (obj && obj->oid) {
  git_oid current_oid;

  git_oid_fromstr(&current_oid, obj->oid);

  if (git_oid_ncmp(&current_oid, oid, len) == 0) {
   if (found)
    return GIT_EAMBIGUOUS;
   found = obj;
  }

  obj++;
 }

 if (found && out)
  *out = found;

 return found ? GIT_OK : GIT_ENOTFOUND;
}
