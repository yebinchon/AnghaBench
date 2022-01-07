
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packing_data {int repo; } ;
struct bitmap_index {int dummy; } ;
struct TYPE_2__ {int show_progress; int reused; } ;


 int kh_init_oid_map () ;
 struct bitmap_index* prepare_bitmap_git (int ) ;
 int rebuild_existing_bitmaps (struct bitmap_index*,struct packing_data*,int ,int ) ;
 TYPE_1__ writer ;

void bitmap_writer_reuse_bitmaps(struct packing_data *to_pack)
{
 struct bitmap_index *bitmap_git;
 if (!(bitmap_git = prepare_bitmap_git(to_pack->repo)))
  return;

 writer.reused = kh_init_oid_map();
 rebuild_existing_bitmaps(bitmap_git, to_pack, writer.reused,
     writer.show_progress);




}
