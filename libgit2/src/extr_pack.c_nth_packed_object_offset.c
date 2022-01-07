
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {unsigned char* data; int len; } ;
struct git_pack_file {int index_version; int num_objects; TYPE_1__ index_map; } ;
typedef int git_off_t ;


 int ntohl (int) ;

__attribute__((used)) static git_off_t nth_packed_object_offset(const struct git_pack_file *p, uint32_t n)
{
 const unsigned char *index = p->index_map.data;
 const unsigned char *end = index + p->index_map.len;
 index += 4 * 256;
 if (p->index_version == 1) {
  return ntohl(*((uint32_t *)(index + 24 * n)));
 } else {
  uint32_t off;
  index += 8 + p->num_objects * (20 + 4);
  off = ntohl(*((uint32_t *)(index + 4 * n)));
  if (!(off & 0x80000000))
   return off;
  index += p->num_objects * 4 + (off & 0x7fffffff) * 8;


  if (index >= end - 8)
   return -1;

  return (((uint64_t)ntohl(*((uint32_t *)(index + 0)))) << 32) |
     ntohl(*((uint32_t *)(index + 4)));
 }
}
