
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; int quote_style; } ;
struct TYPE_4__ {int buf; } ;
struct ref_formatting_stack {TYPE_2__ output; TYPE_1__* prev; int (* at_end ) (struct ref_formatting_stack**) ;} ;
struct atom_value {int dummy; } ;
struct TYPE_3__ {int prev; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int pop_stack_element (struct ref_formatting_stack**) ;
 int quote_formatting (struct strbuf*,int ,int ) ;
 int strbuf_addf_ret (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (TYPE_2__*,struct strbuf*) ;
 int stub1 (struct ref_formatting_stack**) ;

__attribute__((used)) static int end_atom_handler(struct atom_value *atomv, struct ref_formatting_state *state,
       struct strbuf *err)
{
 struct ref_formatting_stack *current = state->stack;
 struct strbuf s = STRBUF_INIT;

 if (!current->at_end)
  return strbuf_addf_ret(err, -1, _("format: %%(end) atom used without corresponding atom"));
 current->at_end(&state->stack);


 current = state->stack;






 if (!current->prev->prev) {
  quote_formatting(&s, current->output.buf, state->quote_style);
  strbuf_swap(&current->output, &s);
 }
 strbuf_release(&s);
 pop_stack_element(&state->stack);
 return 0;
}
