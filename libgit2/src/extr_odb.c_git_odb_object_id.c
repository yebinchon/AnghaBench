
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int const oid; } ;
struct TYPE_5__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_odb_object ;



const git_oid *git_odb_object_id(git_odb_object *object)
{
 return &object->cached.oid;
}
