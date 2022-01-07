
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t m; char* s; } ;
typedef TYPE_1__ kstring_t ;


 int kroundup32 (size_t) ;
 scalar_t__ realloc (char*,size_t) ;

__attribute__((used)) static inline int ks_resize(kstring_t *s, size_t size)
{
 if (s->m < size) {
  char *tmp;
  s->m = size;
  kroundup32(s->m);
  if ((tmp = (char*)realloc(s->s, s->m)))
   s->s = tmp;
  else
   return -1;
 }
 return 0;
}
