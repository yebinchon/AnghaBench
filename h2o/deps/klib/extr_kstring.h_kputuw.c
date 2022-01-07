
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ l; scalar_t__ m; char* s; } ;
typedef TYPE_1__ kstring_t ;


 int EOF ;
 int kputc (int ,TYPE_1__*) ;
 int kroundup32 (scalar_t__) ;
 scalar_t__ realloc (char*,scalar_t__) ;

__attribute__((used)) static inline int kputuw(unsigned c, kstring_t *s)
{
 char buf[16];
 int l, i;
 unsigned x;
 if (c == 0) return kputc('0', s);
 for (l = 0, x = c; x > 0; x /= 10) buf[l++] = x%10 + '0';
 if (s->l + l + 1 >= s->m) {
  char *tmp;
  s->m = s->l + l + 2;
  kroundup32(s->m);
  if ((tmp = (char*)realloc(s->s, s->m)))
   s->s = tmp;
  else
   return EOF;
 }
 for (i = l - 1; i >= 0; --i) s->s[s->l++] = buf[i];
 s->s[s->l] = 0;
 return 0;
}
