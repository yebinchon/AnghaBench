
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tl_expression {struct tl_expression* next; TYPE_1__* left; } ;
struct TYPE_4__ {struct tl_expression* expr; } ;
struct TYPE_3__ {char* text; } ;


 size_t TL_SECTION_FUNCTIONS ;
 TYPE_2__ compiler ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static char *tl_command_generator (const char *text, int state) {
  static int len;
  static struct tl_expression *E;
  if (!state) {
    E = compiler.expr[TL_SECTION_FUNCTIONS].next;
    len = strlen (text);
  }
  while (E != &compiler.expr[TL_SECTION_FUNCTIONS]) {
    char *name = E->left->text;
    E = E->next;
    if (!strncmp (name, text, len)) {
      return strdup (name);
    }
  }
  return ((void*)0);
}
