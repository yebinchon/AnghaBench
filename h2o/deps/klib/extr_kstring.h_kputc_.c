
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ l; scalar_t__ m; char* s; } ;
typedef TYPE_1__ kstring_t ;


 int EOF ;
 int kroundup32 (scalar_t__) ;
 scalar_t__ realloc (char*,scalar_t__) ;

__attribute__((used)) static inline int kputc_(int c, kstring_t *s)
{
 if (s->l + 1 > s->m) {
  char *tmp;
  s->m = s->l + 1;
  kroundup32(s->m);
  if ((tmp = (char*)realloc(s->s, s->m)))
   s->s = tmp;
  else
   return EOF;
 }
 s->s[s->l++] = c;
 return 1;
}
