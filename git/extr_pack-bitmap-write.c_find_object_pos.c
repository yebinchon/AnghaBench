
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct object_id {int dummy; } ;
struct object_entry {int dummy; } ;
struct TYPE_2__ {int to_pack; } ;


 int die (char*,int ) ;
 int oe_in_pack_pos (int ,struct object_entry*) ;
 int oid_to_hex (struct object_id const*) ;
 struct object_entry* packlist_find (int ,struct object_id const*) ;
 TYPE_1__ writer ;

__attribute__((used)) static uint32_t find_object_pos(const struct object_id *oid)
{
 struct object_entry *entry = packlist_find(writer.to_pack, oid);

 if (!entry) {
  die("Failed to write bitmap index. Packfile doesn't have full closure "
   "(object %s is missing)", oid_to_hex(oid));
 }

 return oe_in_pack_pos(writer.to_pack, entry);
}
