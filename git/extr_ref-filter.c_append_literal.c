
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {TYPE_1__* stack; } ;
struct TYPE_2__ {struct strbuf output; } ;


 int hex2chr (char const*) ;
 int strbuf_addch (struct strbuf*,char const) ;

__attribute__((used)) static void append_literal(const char *cp, const char *ep, struct ref_formatting_state *state)
{
 struct strbuf *s = &state->stack->output;

 while (*cp && (!ep || cp < ep)) {
  if (*cp == '%') {
   if (cp[1] == '%')
    cp++;
   else {
    int ch = hex2chr(cp + 1);
    if (0 <= ch) {
     strbuf_addch(s, ch);
     cp += 3;
     continue;
    }
   }
  }
  strbuf_addch(s, *cp);
  cp++;
 }
}
