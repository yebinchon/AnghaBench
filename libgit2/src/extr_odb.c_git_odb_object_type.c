
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_odb_object ;
typedef int git_object_t ;



git_object_t git_odb_object_type(git_odb_object *object)
{
 return object->cached.type;
}
