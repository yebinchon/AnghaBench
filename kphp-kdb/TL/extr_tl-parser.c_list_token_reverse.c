
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {struct tl_token* next; } ;



__attribute__((used)) static struct tl_token *list_token_reverse (struct tl_token *L) {
  struct tl_token *U, *V, *A = ((void*)0);
  for (U = L; U != ((void*)0); U = V) {
    V = U->next;
    U->next = A;
    A = U;
  }
  return A;
}
