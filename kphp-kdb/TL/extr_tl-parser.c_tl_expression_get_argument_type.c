
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {char* text; struct tl_token* next; } ;
struct tl_expression {struct tl_token* left; } ;


 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

char *tl_expression_get_argument_type (struct tl_expression *E, char *arg_name) {
  if (E == ((void*)0) || arg_name == ((void*)0)) {
    return ((void*)0);
  }
  struct tl_token *T = E->left;
  if (T == ((void*)0)) {
    return ((void*)0);
  }
  int l = strlen (arg_name);
  T = T->next;
  while (T != ((void*)0)) {
    if (!strncmp (T->text, arg_name, l) && T->text[l] == ':') {
      return T->text + (l + 1);
    }
    T = T->next;
  }
  return ((void*)0);
}
