
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct object_directory {int path; struct object_directory* next; } ;
struct TYPE_2__ {int packed_git_initialized; struct object_directory* odb; } ;


 int prepare_alt_odb (struct repository*) ;
 int prepare_multi_pack_index_one (struct repository*,int ,int) ;
 int prepare_packed_git_mru (struct repository*) ;
 int prepare_packed_git_one (struct repository*,int ,int) ;
 int rearrange_packed_git (struct repository*) ;

__attribute__((used)) static void prepare_packed_git(struct repository *r)
{
 struct object_directory *odb;

 if (r->objects->packed_git_initialized)
  return;

 prepare_alt_odb(r);
 for (odb = r->objects->odb; odb; odb = odb->next) {
  int local = (odb == r->objects->odb);
  prepare_multi_pack_index_one(r, odb->path, local);
  prepare_packed_git_one(r, odb->path, local);
 }
 rearrange_packed_git(r);

 prepare_packed_git_mru(r);
 r->objects->packed_git_initialized = 1;
}
