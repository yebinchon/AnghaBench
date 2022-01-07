
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int ALLOC_GROW (struct strbuf**,size_t,size_t) ;
 char* memchr (char const*,int,size_t) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_init (struct strbuf*,int) ;
 struct strbuf* xmalloc (int) ;

struct strbuf **strbuf_split_buf(const char *str, size_t slen,
     int terminator, int max)
{
 struct strbuf **ret = ((void*)0);
 size_t nr = 0, alloc = 0;
 struct strbuf *t;

 while (slen) {
  int len = slen;
  if (max <= 0 || nr + 1 < max) {
   const char *end = memchr(str, terminator, slen);
   if (end)
    len = end - str + 1;
  }
  t = xmalloc(sizeof(struct strbuf));
  strbuf_init(t, len);
  strbuf_add(t, str, len);
  ALLOC_GROW(ret, nr + 2, alloc);
  ret[nr++] = t;
  str += len;
  slen -= len;
 }
 ALLOC_GROW(ret, nr + 1, alloc);
 ret[nr] = ((void*)0);
 return ret;
}
