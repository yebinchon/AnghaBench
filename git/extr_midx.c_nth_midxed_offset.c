
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct multi_pack_index {unsigned char* chunk_object_offsets; scalar_t__ chunk_large_offsets; } ;
typedef int off_t ;


 int MIDX_CHUNK_OFFSET_WIDTH ;
 int MIDX_LARGE_OFFSET_NEEDED ;
 int _ (char*) ;
 int die (int ) ;
 int get_be32 (unsigned char const*) ;
 int get_be64 (scalar_t__) ;

__attribute__((used)) static off_t nth_midxed_offset(struct multi_pack_index *m, uint32_t pos)
{
 const unsigned char *offset_data;
 uint32_t offset32;

 offset_data = m->chunk_object_offsets + pos * MIDX_CHUNK_OFFSET_WIDTH;
 offset32 = get_be32(offset_data + sizeof(uint32_t));

 if (m->chunk_large_offsets && offset32 & MIDX_LARGE_OFFSET_NEEDED) {
  if (sizeof(off_t) < sizeof(uint64_t))
   die(_("multi-pack-index stores a 64-bit offset, but off_t is too small"));

  offset32 ^= MIDX_LARGE_OFFSET_NEEDED;
  return get_be64(m->chunk_large_offsets + sizeof(uint64_t) * offset32);
 }

 return offset32;
}
