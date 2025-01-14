
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; } ;
struct TYPE_2__ {int buf; scalar_t__ len; } ;
struct ref_formatting_stack {scalar_t__ at_end; TYPE_1__ output; scalar_t__ at_end_data; } ;
struct if_then_else {int then_atom_seen; scalar_t__ cmp_status; int condition_satisfied; int str; scalar_t__ else_atom_seen; } ;
struct atom_value {int dummy; } ;


 scalar_t__ COMPARE_EQUAL ;
 scalar_t__ COMPARE_UNEQUAL ;
 int _ (char*) ;
 scalar_t__ if_then_else_handler ;
 int is_empty (int ) ;
 int strbuf_addf_ret (struct strbuf*,int,int ) ;
 int strbuf_reset (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int then_atom_handler(struct atom_value *atomv, struct ref_formatting_state *state,
        struct strbuf *err)
{
 struct ref_formatting_stack *cur = state->stack;
 struct if_then_else *if_then_else = ((void*)0);

 if (cur->at_end == if_then_else_handler)
  if_then_else = (struct if_then_else *)cur->at_end_data;
 if (!if_then_else)
  return strbuf_addf_ret(err, -1, _("format: %%(then) atom used without an %%(if) atom"));
 if (if_then_else->then_atom_seen)
  return strbuf_addf_ret(err, -1, _("format: %%(then) atom used more than once"));
 if (if_then_else->else_atom_seen)
  return strbuf_addf_ret(err, -1, _("format: %%(then) atom used after %%(else)"));
 if_then_else->then_atom_seen = 1;





 if (if_then_else->cmp_status == COMPARE_EQUAL) {
  if (!strcmp(if_then_else->str, cur->output.buf))
   if_then_else->condition_satisfied = 1;
 } else if (if_then_else->cmp_status == COMPARE_UNEQUAL) {
  if (strcmp(if_then_else->str, cur->output.buf))
   if_then_else->condition_satisfied = 1;
 } else if (cur->output.len && !is_empty(cur->output.buf))
  if_then_else->condition_satisfied = 1;
 strbuf_reset(&cur->output);
 return 0;
}
