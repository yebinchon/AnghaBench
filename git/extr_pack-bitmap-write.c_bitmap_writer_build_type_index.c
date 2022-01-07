
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct packing_data {int repo; int nr_objects; int in_pack_pos; } ;
struct pack_idx_entry {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {void* tags; void* blobs; void* trees; void* commits; } ;


 int ALLOC_ARRAY (int ,int ) ;




 int die (char*,int ,int,int) ;
 void* ewah_new () ;
 int ewah_set (void*,size_t) ;
 int oe_set_in_pack_pos (struct packing_data*,struct object_entry*,size_t) ;
 int oe_type (struct object_entry*) ;
 int oid_object_info (int ,int *,int *) ;
 int oid_to_hex (int *) ;
 TYPE_2__ writer ;

void bitmap_writer_build_type_index(struct packing_data *to_pack,
        struct pack_idx_entry **index,
        uint32_t index_nr)
{
 uint32_t i;

 writer.commits = ewah_new();
 writer.trees = ewah_new();
 writer.blobs = ewah_new();
 writer.tags = ewah_new();
 ALLOC_ARRAY(to_pack->in_pack_pos, to_pack->nr_objects);

 for (i = 0; i < index_nr; ++i) {
  struct object_entry *entry = (struct object_entry *)index[i];
  enum object_type real_type;

  oe_set_in_pack_pos(to_pack, entry, i);

  switch (oe_type(entry)) {
  case 130:
  case 128:
  case 131:
  case 129:
   real_type = oe_type(entry);
   break;

  default:
   real_type = oid_object_info(to_pack->repo,
          &entry->idx.oid, ((void*)0));
   break;
  }

  switch (real_type) {
  case 130:
   ewah_set(writer.commits, i);
   break;

  case 128:
   ewah_set(writer.trees, i);
   break;

  case 131:
   ewah_set(writer.blobs, i);
   break;

  case 129:
   ewah_set(writer.tags, i);
   break;

  default:
   die("Missing type information for %s (%d/%d)",
       oid_to_hex(&entry->idx.oid), real_type,
       oe_type(entry));
  }
 }
}
