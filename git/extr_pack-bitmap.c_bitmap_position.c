
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct bitmap_index {int dummy; } ;


 int bitmap_position_extended (struct bitmap_index*,struct object_id const*) ;
 int bitmap_position_packfile (struct bitmap_index*,struct object_id const*) ;

__attribute__((used)) static int bitmap_position(struct bitmap_index *bitmap_git,
      const struct object_id *oid)
{
 int pos = bitmap_position_packfile(bitmap_git, oid);
 return (pos >= 0) ? pos : bitmap_position_extended(bitmap_git, oid);
}
