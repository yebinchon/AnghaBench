
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct multi_pack_index {size_t num_packs; } ;



__attribute__((used)) static int fill_included_packs_all(struct multi_pack_index *m,
       unsigned char *include_pack)
{
 uint32_t i;

 for (i = 0; i < m->num_packs; i++)
  include_pack[i] = 1;

 return m->num_packs < 2;
}
