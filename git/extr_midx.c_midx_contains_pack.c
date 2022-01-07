
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct multi_pack_index {scalar_t__ num_packs; char** pack_names; } ;


 int cmp_idx_or_pack_name (char const*,char const*) ;

int midx_contains_pack(struct multi_pack_index *m, const char *idx_or_pack_name)
{
 uint32_t first = 0, last = m->num_packs;

 while (first < last) {
  uint32_t mid = first + (last - first) / 2;
  const char *current;
  int cmp;

  current = m->pack_names[mid];
  cmp = cmp_idx_or_pack_name(idx_or_pack_name, current);
  if (!cmp)
   return 1;
  if (cmp > 0) {
   first = mid + 1;
   continue;
  }
  last = mid;
 }

 return 0;
}
