
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pack_midx_entry {int offset; } ;
struct hashfile {int dummy; } ;


 int BUG (char*) ;
 int hashwrite_be32 (struct hashfile*,int) ;

__attribute__((used)) static size_t write_midx_large_offsets(struct hashfile *f, uint32_t nr_large_offset,
           struct pack_midx_entry *objects, uint32_t nr_objects)
{
 struct pack_midx_entry *list = objects, *end = objects + nr_objects;
 size_t written = 0;

 while (nr_large_offset) {
  struct pack_midx_entry *obj;
  uint64_t offset;

  if (list >= end)
   BUG("too many large-offset objects");

  obj = list++;
  offset = obj->offset;

  if (!(offset >> 31))
   continue;

  hashwrite_be32(f, offset >> 32);
  hashwrite_be32(f, offset & 0xffffffffUL);
  written += 2 * sizeof(uint32_t);

  nr_large_offset--;
 }

 return written;
}
