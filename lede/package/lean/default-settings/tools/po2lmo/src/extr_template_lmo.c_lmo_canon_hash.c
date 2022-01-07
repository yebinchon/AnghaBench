
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int res ;


 scalar_t__ isspace (char const) ;
 int sfh_hash (char*,int) ;

uint32_t lmo_canon_hash(const char *str, int len)
{
 char res[4096];
 char *ptr, prev;
 int off;

 if (!str || len >= sizeof(res))
  return 0;

 for (prev = ' ', ptr = res, off = 0; off < len; prev = *str, off++, str++)
 {
  if (isspace(*str))
  {
   if (!isspace(prev))
    *ptr++ = ' ';
  }
  else
  {
   *ptr++ = *str;
  }
 }

 if ((ptr > res) && isspace(*(ptr-1)))
  ptr--;

 return sfh_hash(res, ptr - res);
}
