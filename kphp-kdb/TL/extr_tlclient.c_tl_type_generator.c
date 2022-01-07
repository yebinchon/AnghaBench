
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_expression {struct tl_expression* rnext; TYPE_1__* left; } ;
struct TYPE_2__ {char* text; } ;


 int compiler ;
 int expected_type ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;
 struct tl_expression* tl_expression_find_first_by_composite_typename (int *,int ) ;

__attribute__((used)) static char *tl_type_generator (const char *text, int state) {

  static int len;
  static struct tl_expression *E;
  if (!state) {
    E = tl_expression_find_first_by_composite_typename (&compiler, expected_type);
    len = strlen (text);
  }
  while (E != ((void*)0)) {
    char *name = E->left->text;
    E = E->rnext;
    if (!strncmp (name, text, len)) {
      return strdup (name);
    }
  }
  return ((void*)0);
}
