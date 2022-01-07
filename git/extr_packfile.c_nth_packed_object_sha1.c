
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int const uint32_t ;
struct packed_git {unsigned char* index_data; unsigned int const num_objects; int index_version; } ;
struct TYPE_2__ {unsigned int rawsz; } ;


 scalar_t__ open_pack_index (struct packed_git*) ;
 TYPE_1__* the_hash_algo ;

const unsigned char *nth_packed_object_sha1(struct packed_git *p,
         uint32_t n)
{
 const unsigned char *index = p->index_data;
 const unsigned int hashsz = the_hash_algo->rawsz;
 if (!index) {
  if (open_pack_index(p))
   return ((void*)0);
  index = p->index_data;
 }
 if (n >= p->num_objects)
  return ((void*)0);
 index += 4 * 256;
 if (p->index_version == 1) {
  return index + (hashsz + 4) * n + 4;
 } else {
  index += 8;
  return index + hashsz * n;
 }
}
