
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int i64 ;
typedef int brain_server_hash_short_t ;


 int brain_server_sort_hash_short (int const*,int const*) ;

i64 brain_server_find_hash_short (const u32 *search, const brain_server_hash_short_t *buf, const i64 cnt)
{
  for (i64 l = 0, r = cnt; r; r >>= 1)
  {
    const i64 m = r >> 1;
    const i64 c = l + m;

    const int cmp = brain_server_sort_hash_short (search, buf + c);

    if (cmp > 0)
    {
      l += m + 1;

      r--;
    }

    if (cmp == 0) return c;
  }

  return -1;
}
