
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;
struct bitmap_index {int pack; } ;
typedef int off_t ;


 int find_pack_entry_one (int ,int ) ;
 int find_revindex_position (int ,int ) ;

__attribute__((used)) static inline int bitmap_position_packfile(struct bitmap_index *bitmap_git,
        const struct object_id *oid)
{
 off_t offset = find_pack_entry_one(oid->hash, bitmap_git->pack);
 if (!offset)
  return -1;

 return find_revindex_position(bitmap_git->pack, offset);
}
