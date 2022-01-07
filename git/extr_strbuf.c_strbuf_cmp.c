
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;


 int memcmp (int ,int ,size_t) ;

int strbuf_cmp(const struct strbuf *a, const struct strbuf *b)
{
 size_t len = a->len < b->len ? a->len: b->len;
 int cmp = memcmp(a->buf, b->buf, len);
 if (cmp)
  return cmp;
 return a->len < b->len ? -1: a->len != b->len;
}
