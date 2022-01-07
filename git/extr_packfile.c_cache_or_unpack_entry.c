
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct packed_git {int dummy; } ;
struct delta_base_cache_entry {int type; unsigned long size; int data; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct delta_base_cache_entry* get_delta_base_cache_entry (struct packed_git*,int ) ;
 void* unpack_entry (struct repository*,struct packed_git*,int ,int*,unsigned long*) ;
 void* xmemdupz (int ,unsigned long) ;

__attribute__((used)) static void *cache_or_unpack_entry(struct repository *r, struct packed_git *p,
       off_t base_offset, unsigned long *base_size,
       enum object_type *type)
{
 struct delta_base_cache_entry *ent;

 ent = get_delta_base_cache_entry(p, base_offset);
 if (!ent)
  return unpack_entry(r, p, base_offset, type, base_size);

 if (type)
  *type = ent->type;
 if (base_size)
  *base_size = ent->size;
 return xmemdupz(ent->data, ent->size);
}
