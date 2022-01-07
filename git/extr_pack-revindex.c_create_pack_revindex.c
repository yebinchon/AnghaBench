
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct packed_git {unsigned int num_objects; char* index_data; int index_version; int pack_size; TYPE_2__* revindex; } ;
struct TYPE_5__ {int offset; unsigned int nr; } ;
struct TYPE_4__ {unsigned int rawsz; } ;


 int ALLOC_ARRAY (TYPE_2__*,unsigned int const) ;
 int get_be64 (int const*) ;
 void* ntohl (int const) ;
 int sort_revindex (TYPE_2__*,unsigned int const,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void create_pack_revindex(struct packed_git *p)
{
 const unsigned num_ent = p->num_objects;
 unsigned i;
 const char *index = p->index_data;
 const unsigned hashsz = the_hash_algo->rawsz;

 ALLOC_ARRAY(p->revindex, num_ent + 1);
 index += 4 * 256;

 if (p->index_version > 1) {
  const uint32_t *off_32 =
   (uint32_t *)(index + 8 + p->num_objects * (hashsz + 4));
  const uint32_t *off_64 = off_32 + p->num_objects;
  for (i = 0; i < num_ent; i++) {
   const uint32_t off = ntohl(*off_32++);
   if (!(off & 0x80000000)) {
    p->revindex[i].offset = off;
   } else {
    p->revindex[i].offset = get_be64(off_64);
    off_64 += 2;
   }
   p->revindex[i].nr = i;
  }
 } else {
  for (i = 0; i < num_ent; i++) {
   const uint32_t hl = *((uint32_t *)(index + (hashsz + 4) * i));
   p->revindex[i].offset = ntohl(hl);
   p->revindex[i].nr = i;
  }
 }





 p->revindex[num_ent].offset = p->pack_size - hashsz;
 p->revindex[num_ent].nr = -1;
 sort_revindex(p->revindex, num_ent, p->pack_size);
}
