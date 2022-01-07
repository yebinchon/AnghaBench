
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int * repo; } ;
typedef TYPE_1__ git_object ;


 int assert (TYPE_1__ const*) ;

git_repository *git_object_owner(const git_object *obj)
{
 assert(obj);
 return obj->repo;
}
