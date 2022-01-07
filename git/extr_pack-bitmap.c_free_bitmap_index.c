
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bitmap_index* hashes; struct bitmap_index* objects; } ;
struct bitmap_index {int haves; int result; TYPE_1__ ext_index; int bitmaps; int tags; int blobs; int trees; int commits; int map_size; scalar_t__ map; } ;


 int bitmap_free (int ) ;
 int ewah_pool_free (int ) ;
 int free (struct bitmap_index*) ;
 int kh_destroy_oid_map (int ) ;
 int munmap (scalar_t__,int ) ;

void free_bitmap_index(struct bitmap_index *b)
{
 if (!b)
  return;

 if (b->map)
  munmap(b->map, b->map_size);
 ewah_pool_free(b->commits);
 ewah_pool_free(b->trees);
 ewah_pool_free(b->blobs);
 ewah_pool_free(b->tags);
 kh_destroy_oid_map(b->bitmaps);
 free(b->ext_index.objects);
 free(b->ext_index.hashes);
 bitmap_free(b->result);
 bitmap_free(b->haves);
 free(b);
}
