
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_2__ {scalar_t__ packed_git_initialized; scalar_t__ approximate_object_count_valid; struct object_directory* odb; } ;


 int odb_clear_loose_cache (struct object_directory*) ;
 int prepare_packed_git (struct repository*) ;

void reprepare_packed_git(struct repository *r)
{
 struct object_directory *odb;

 for (odb = r->objects->odb; odb; odb = odb->next)
  odb_clear_loose_cache(odb);

 r->objects->approximate_object_count_valid = 0;
 r->objects->packed_git_initialized = 0;
 prepare_packed_git(r);
}
