
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l; int m; char* s; } ;
typedef TYPE_1__ kstring_t ;


 int kroundup32 (int) ;
 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static inline int kputc(int c, kstring_t *s)
{
 if (s->l + 1 >= s->m) {
  s->m = s->l + 2;
  kroundup32(s->m);
  s->s = (char*)realloc(s->s, s->m);
 }
 s->s[s->l++] = c; s->s[s->l] = 0;
 return c;
}
