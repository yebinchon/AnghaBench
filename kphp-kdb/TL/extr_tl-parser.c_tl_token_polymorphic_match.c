
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {struct tl_token* next; int text; } ;


 int assert (int) ;
 scalar_t__ strcmp (int ,int ) ;

int tl_token_polymorphic_match (struct tl_token *L, struct tl_token *R) {
  assert (L != ((void*)0) && R != ((void*)0));
  if (strcmp (L->text, R->text)) {
    return 0;
  }
  while (L && R) {
    L = L->next;
    R = R->next;
  }
  return (L == ((void*)0) && R == ((void*)0)) ? 1 : 0;
}
