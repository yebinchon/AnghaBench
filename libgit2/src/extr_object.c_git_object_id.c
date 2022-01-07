
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {int const oid; } ;
struct TYPE_6__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_object ;


 int assert (TYPE_2__ const*) ;

const git_oid *git_object_id(const git_object *obj)
{
 assert(obj);
 return &obj->cached.oid;
}
