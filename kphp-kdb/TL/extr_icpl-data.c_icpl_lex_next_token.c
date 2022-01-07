
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int start; int type; } ;
typedef TYPE_1__ icpl_token_t ;


 int next_token (char const*,int,TYPE_1__*) ;
 int vkprintf (int,char*,int,char const*,int ) ;

__attribute__((used)) static int icpl_lex_next_token (const char *input, int *pos, icpl_token_t *T) {
  int r = next_token (input, *pos, T);
  if (r < 0) {
    return r;
  }
  vkprintf (4, "token: %.*s, type: %d\n", T->length, input + T->start, T->type);
  *pos = T->start + T->length;
  return r;
}
