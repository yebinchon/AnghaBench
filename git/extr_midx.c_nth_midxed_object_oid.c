
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct object_id {int hash; } ;
struct multi_pack_index {int num_objects; int hash_len; scalar_t__ chunk_oid_lookup; } ;


 int hashcpy (int ,scalar_t__) ;

struct object_id *nth_midxed_object_oid(struct object_id *oid,
     struct multi_pack_index *m,
     uint32_t n)
{
 if (n >= m->num_objects)
  return ((void*)0);

 hashcpy(oid->hash, m->chunk_oid_lookup + m->hash_len * n);
 return oid;
}
