
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {char* text; struct tl_token* next; } ;


 int assert (int) ;
 char* cstr_dup (char*) ;
 int sprintf (char*,char*,char*) ;
 int tl_token_length (struct tl_token*,int*,int*) ;
 char* tl_zzmalloc (int) ;

char *cstr_join_with_sugar (struct tl_token *T) {
  int i, n, l;
  tl_token_length (T, &n, &l);
  assert (n >= 1);
  if (n == 1) {
    return cstr_dup (T->text);
  }
  l += n + 1;
  char *buf = tl_zzmalloc (l), *p = buf;
  for (i = 0; T != ((void*)0); T = T->next, i++) {
    p += sprintf (p, "%s", T->text);
    *p++ = i ? ((i == n - 1) ? '>' : ',') : '<';
  }
  *p++ = 0;
  assert (p == buf + l);
  return buf;
}
