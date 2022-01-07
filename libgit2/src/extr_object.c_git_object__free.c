
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t git_object_t ;
struct TYPE_5__ {size_t type; } ;
struct TYPE_6__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_object ;
struct TYPE_7__ {int (* free ) (void*) ;} ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int git__free (void*) ;
 TYPE_3__* git_objects_table ;
 int stub1 (void*) ;

void git_object__free(void *obj)
{
 git_object_t type = ((git_object *)obj)->cached.type;

 if (type < 0 || ((size_t)type) >= ARRAY_SIZE(git_objects_table) ||
  !git_objects_table[type].free)
  git__free(obj);
 else
  git_objects_table[type].free(obj);
}
