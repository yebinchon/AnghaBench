
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {struct tl_token* next; int text; } ;


 int cstr_dup (int ) ;
 struct tl_token* list_token_reverse (struct tl_token*) ;
 struct tl_token* zmalloc0 (int) ;

__attribute__((used)) static struct tl_token *tl_token_clone (struct tl_token *T) {
  struct tl_token *head = ((void*)0);
  while (T != ((void*)0)) {
    struct tl_token *A = zmalloc0 (sizeof (struct tl_token));
    A->text = cstr_dup (T->text);
    A->next = head;
    head = A;
    T = T->next;
  }
  return list_token_reverse (head);
}
