
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct multi_pack_index {scalar_t__ chunk_object_offsets; } ;


 int MIDX_CHUNK_OFFSET_WIDTH ;
 int get_be32 (scalar_t__) ;

__attribute__((used)) static uint32_t nth_midxed_pack_int_id(struct multi_pack_index *m, uint32_t pos)
{
 return get_be32(m->chunk_object_offsets + pos * MIDX_CHUNK_OFFSET_WIDTH);
}
