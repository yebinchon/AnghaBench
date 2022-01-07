
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hashcmp (unsigned char const*,unsigned char const*) ;
 int ntohl (int const) ;

int bsearch_hash(const unsigned char *sha1, const uint32_t *fanout_nbo,
   const unsigned char *table, size_t stride, uint32_t *result)
{
 uint32_t hi, lo;

 hi = ntohl(fanout_nbo[*sha1]);
 lo = ((*sha1 == 0x0) ? 0 : ntohl(fanout_nbo[*sha1 - 1]));

 while (lo < hi) {
  unsigned mi = lo + (hi - lo) / 2;
  int cmp = hashcmp(table + mi * stride, sha1);

  if (!cmp) {
   if (result)
    *result = mi;
   return 1;
  }
  if (cmp > 0)
   hi = mi;
  else
   lo = mi + 1;
 }

 if (result)
  *result = lo;
 return 0;
}
