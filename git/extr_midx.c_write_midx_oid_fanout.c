
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int* hash; } ;
struct pack_midx_entry {TYPE_1__ oid; } ;
struct hashfile {int dummy; } ;


 size_t MIDX_CHUNK_FANOUT_SIZE ;
 int hashwrite_be32 (struct hashfile*,int) ;

__attribute__((used)) static size_t write_midx_oid_fanout(struct hashfile *f,
        struct pack_midx_entry *objects,
        uint32_t nr_objects)
{
 struct pack_midx_entry *list = objects;
 struct pack_midx_entry *last = objects + nr_objects;
 uint32_t count = 0;
 uint32_t i;






 for (i = 0; i < 256; i++) {
  struct pack_midx_entry *next = list;

  while (next < last && next->oid.hash[0] == i) {
   count++;
   next++;
  }

  hashwrite_be32(f, count);
  list = next;
 }

 return MIDX_CHUNK_FANOUT_SIZE;
}
