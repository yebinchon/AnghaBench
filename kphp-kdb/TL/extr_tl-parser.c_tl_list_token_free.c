
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {int text; struct tl_token* next; } ;


 int cstr_free (int *) ;
 int zfree (struct tl_token*,int) ;

void tl_list_token_free (struct tl_token *L) {
  struct tl_token *E, *T;
  for (E = L; E != ((void*)0); E = T) {
    T = E->next;
    cstr_free (&E->text);
    zfree (E, sizeof (*E));
  }
}
