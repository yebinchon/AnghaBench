
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_2__* objects; } ;
struct TYPE_4__ {int * multi_pack_index; TYPE_1__* odb; } ;
struct TYPE_3__ {int path; } ;


 int UNLEAK (char*) ;
 int _ (char*) ;
 int close_midx (int *) ;
 int die (int ,char*) ;
 int free (char*) ;
 char* get_midx_filename (int ) ;
 scalar_t__ remove_path (char*) ;

void clear_midx_file(struct repository *r)
{
 char *midx = get_midx_filename(r->objects->odb->path);

 if (r->objects && r->objects->multi_pack_index) {
  close_midx(r->objects->multi_pack_index);
  r->objects->multi_pack_index = ((void*)0);
 }

 if (remove_path(midx)) {
  UNLEAK(midx);
  die(_("failed to clear multi-pack-index at %s"), midx);
 }

 free(midx);
}
