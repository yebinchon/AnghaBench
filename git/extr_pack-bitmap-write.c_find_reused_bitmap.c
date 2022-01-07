
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct ewah_bitmap {int dummy; } ;
typedef scalar_t__ khiter_t ;
struct TYPE_2__ {int reused; } ;


 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,struct object_id const) ;
 struct ewah_bitmap* kh_value (int ,scalar_t__) ;
 TYPE_1__ writer ;

__attribute__((used)) static struct ewah_bitmap *find_reused_bitmap(const struct object_id *oid)
{
 khiter_t hash_pos;

 if (!writer.reused)
  return ((void*)0);

 hash_pos = kh_get_oid_map(writer.reused, *oid);
 if (hash_pos >= kh_end(writer.reused))
  return ((void*)0);

 return kh_value(writer.reused, hash_pos);
}
