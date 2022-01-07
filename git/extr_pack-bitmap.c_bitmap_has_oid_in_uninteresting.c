
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct bitmap_index {int haves; } ;


 int bitmap_get (int ,int) ;
 int bitmap_position_packfile (struct bitmap_index*,struct object_id const*) ;

int bitmap_has_oid_in_uninteresting(struct bitmap_index *bitmap_git,
        const struct object_id *oid)
{
 int pos;

 if (!bitmap_git)
  return 0;
 if (!bitmap_git->haves)
  return 0;

 pos = bitmap_position_packfile(bitmap_git, oid);
 if (pos < 0)
  return 0;

 return bitmap_get(bitmap_git->haves, pos);
}
