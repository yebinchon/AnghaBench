
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int positions; } ;
struct bitmap_index {scalar_t__ map_size; int * map; void* tags; void* blobs; void* trees; void* commits; int pack; TYPE_1__ ext_index; int bitmaps; } ;


 int assert (int *) ;
 int kh_init_oid_map () ;
 int kh_init_oid_pos () ;
 scalar_t__ load_bitmap_entries_v1 (struct bitmap_index*) ;
 scalar_t__ load_pack_revindex (int ) ;
 int munmap (int *,scalar_t__) ;
 void* read_bitmap_1 (struct bitmap_index*) ;

__attribute__((used)) static int load_pack_bitmap(struct bitmap_index *bitmap_git)
{
 assert(bitmap_git->map);

 bitmap_git->bitmaps = kh_init_oid_map();
 bitmap_git->ext_index.positions = kh_init_oid_pos();
 if (load_pack_revindex(bitmap_git->pack))
  goto failed;

 if (!(bitmap_git->commits = read_bitmap_1(bitmap_git)) ||
  !(bitmap_git->trees = read_bitmap_1(bitmap_git)) ||
  !(bitmap_git->blobs = read_bitmap_1(bitmap_git)) ||
  !(bitmap_git->tags = read_bitmap_1(bitmap_git)))
  goto failed;

 if (load_bitmap_entries_v1(bitmap_git) < 0)
  goto failed;

 return 0;

failed:
 munmap(bitmap_git->map, bitmap_git->map_size);
 bitmap_git->map = ((void*)0);
 bitmap_git->map_size = 0;
 return -1;
}
