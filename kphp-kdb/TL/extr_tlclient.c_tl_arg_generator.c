
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_token {char* text; struct tl_token* next; } ;
struct TYPE_2__ {struct tl_token* left; } ;


 TYPE_1__* expected_expr ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static char *tl_arg_generator (const char *text, int state) {

  static int len;
  static struct tl_token *T = ((void*)0);
  if (!state) {
    T = ((void*)0);
    if (expected_expr) {
      T = expected_expr->left;
      if (T) {
        T = T->next;
      }
    }
    len = strlen (text);
  }
  while (T != ((void*)0)) {
    char *name = T->text;
    T = T->next;
    if (!strncmp (name, text, len)) {
      return strdup (name);
    }
  }
  return ((void*)0);
}
