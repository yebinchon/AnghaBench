
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CHUNK_SZ ;
 char* memchr (char*,char,size_t) ;

__attribute__((used)) static inline char *
find_eol_char(char *s, size_t len)
{




 char *s_end, *cr, *lf;
 s_end = s+len;
 while (s < s_end) {
  size_t chunk = (s + 128 < s_end) ? 128 : (s_end - s);
  cr = memchr(s, '\r', chunk);
  lf = memchr(s, '\n', chunk);
  if (cr) {
   if (lf && lf < cr)
    return lf;
   return cr;
  } else if (lf) {
   return lf;
  }
  s += 128;
 }

 return ((void*)0);

}
