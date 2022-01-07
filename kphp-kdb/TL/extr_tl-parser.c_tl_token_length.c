
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {struct tl_token* next; int text; } ;


 scalar_t__ strlen (int ) ;

__attribute__((used)) static void tl_token_length (struct tl_token *T, int *tokens, int *total_length) {
  *tokens = *total_length = 0;
  while (T != ((void*)0)) {
    (*tokens)++;
    (*total_length) += strlen (T->text);
    T = T->next;
  }
}
