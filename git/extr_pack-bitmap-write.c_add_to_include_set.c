
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct bitmapped_commit {int bitmap; } ;
struct bitmap {int dummy; } ;
typedef scalar_t__ khiter_t ;
struct TYPE_4__ {int bitmaps; } ;


 scalar_t__ bitmap_get (struct bitmap*,int ) ;
 int bitmap_or_ewah (struct bitmap*,int ) ;
 int bitmap_set (struct bitmap*,int ) ;
 int find_object_pos (int *) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,int ) ;
 struct bitmapped_commit* kh_value (int ,scalar_t__) ;
 TYPE_2__ writer ;

__attribute__((used)) static int
add_to_include_set(struct bitmap *base, struct commit *commit)
{
 khiter_t hash_pos;
 uint32_t bitmap_pos = find_object_pos(&commit->object.oid);

 if (bitmap_get(base, bitmap_pos))
  return 0;

 hash_pos = kh_get_oid_map(writer.bitmaps, commit->object.oid);
 if (hash_pos < kh_end(writer.bitmaps)) {
  struct bitmapped_commit *bc = kh_value(writer.bitmaps, hash_pos);
  bitmap_or_ewah(base, bc->bitmap);
  return 0;
 }

 bitmap_set(base, bitmap_pos);
 return 1;
}
