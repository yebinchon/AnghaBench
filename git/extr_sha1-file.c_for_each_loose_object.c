
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct object_directory {int path; struct object_directory* next; } ;
typedef enum for_each_object_flags { ____Placeholder_for_each_object_flags } for_each_object_flags ;
typedef int each_loose_object_fn ;
struct TYPE_5__ {TYPE_1__* objects; } ;
struct TYPE_4__ {struct object_directory* odb; } ;


 int FOR_EACH_OBJECT_LOCAL_ONLY ;
 int for_each_loose_file_in_objdir (int ,int ,int *,int *,void*) ;
 int prepare_alt_odb (TYPE_2__*) ;
 TYPE_2__* the_repository ;

int for_each_loose_object(each_loose_object_fn cb, void *data,
     enum for_each_object_flags flags)
{
 struct object_directory *odb;

 prepare_alt_odb(the_repository);
 for (odb = the_repository->objects->odb; odb; odb = odb->next) {
  int r = for_each_loose_file_in_objdir(odb->path, cb, ((void*)0),
            ((void*)0), data);
  if (r)
   return r;

  if (flags & FOR_EACH_OBJECT_LOCAL_ONLY)
   break;
 }

 return 0;
}
