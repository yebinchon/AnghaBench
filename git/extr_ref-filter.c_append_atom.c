
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {TYPE_1__* stack; int quote_style; } ;
struct atom_value {int s; } ;
struct TYPE_2__ {int output; int prev; } ;


 int quote_formatting (int *,int ,int ) ;
 int strbuf_addstr (int *,int ) ;

__attribute__((used)) static int append_atom(struct atom_value *v, struct ref_formatting_state *state,
         struct strbuf *unused_err)
{






 if (!state->stack->prev)
  quote_formatting(&state->stack->output, v->s, state->quote_style);
 else
  strbuf_addstr(&state->stack->output, v->s);
 return 0;
}
