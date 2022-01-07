
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef scalar_t__ khiter_t ;


 int island_bitmap_is_subset (int ,int ) ;
 int island_marks ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,struct object_id const) ;
 int kh_value (int ,scalar_t__) ;

int in_same_island(const struct object_id *trg_oid, const struct object_id *src_oid)
{
 khiter_t trg_pos, src_pos;


 if (!island_marks)
  return 1;





 trg_pos = kh_get_oid_map(island_marks, *trg_oid);
 if (trg_pos >= kh_end(island_marks))
  return 1;





 src_pos = kh_get_oid_map(island_marks, *src_oid);
 if (src_pos >= kh_end(island_marks))
  return 0;

 return island_bitmap_is_subset(kh_value(island_marks, trg_pos),
    kh_value(island_marks, src_pos));
}
