
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {char* name; struct property* prop; } ;
struct property {int lineno; TYPE_2__* file; int type; struct menu* menu; struct property* next; } ;
struct menu {int lineno; TYPE_1__* file; } ;
struct dep_stack {struct property* prop; scalar_t__ expr; struct symbol* sym; struct dep_stack* next; struct dep_stack* prev; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 struct dep_stack* check_top ;
 int dep_stack_insert (struct dep_stack*,struct symbol*) ;
 int dep_stack_remove () ;
 int fprintf (int ,char*,...) ;
 struct symbol* prop_get_symbol (int ) ;
 char* prop_get_type_name (int ) ;
 int stderr ;
 int sym_get_choice_prop (struct symbol*) ;
 scalar_t__ sym_is_choice (struct symbol*) ;
 scalar_t__ sym_is_choice_value (struct symbol*) ;

__attribute__((used)) static void sym_check_print_recursive(struct symbol *last_sym)
{
 struct dep_stack *stack;
 struct symbol *sym, *next_sym;
 struct menu *menu = ((void*)0);
 struct property *prop;
 struct dep_stack cv_stack;

 if (sym_is_choice_value(last_sym)) {
  dep_stack_insert(&cv_stack, last_sym);
  last_sym = prop_get_symbol(sym_get_choice_prop(last_sym));
 }

 for (stack = check_top; stack != ((void*)0); stack = stack->prev)
  if (stack->sym == last_sym)
   break;
 if (!stack) {
  fprintf(stderr, "unexpected recursive dependency error\n");
  return;
 }

 for (; stack; stack = stack->next) {
  sym = stack->sym;
  next_sym = stack->next ? stack->next->sym : last_sym;
  prop = stack->prop;
  if (prop == ((void*)0))
   prop = stack->sym->prop;


  if (sym_is_choice(sym) || sym_is_choice_value(sym)) {
   for (prop = sym->prop; prop; prop = prop->next) {
    menu = prop->menu;
    if (prop->menu)
     break;
   }
  }
  if (stack->sym == last_sym)
   fprintf(stderr, "%s:%d:error: recursive dependency detected!\n",
    prop->file->name, prop->lineno);
   fprintf(stderr, "For a resolution refer to Documentation/kbuild/kconfig-language.txt\n");
   fprintf(stderr, "subsection \"Kconfig recursive dependency limitations\"\n");
  if (stack->expr) {
   fprintf(stderr, "%s:%d:\tsymbol %s %s value contains %s\n",
    prop->file->name, prop->lineno,
    sym->name ? sym->name : "<choice>",
    prop_get_type_name(prop->type),
    next_sym->name ? next_sym->name : "<choice>");
  } else if (stack->prop) {
   fprintf(stderr, "%s:%d:\tsymbol %s depends on %s\n",
    prop->file->name, prop->lineno,
    sym->name ? sym->name : "<choice>",
    next_sym->name ? next_sym->name : "<choice>");
  } else if (sym_is_choice(sym)) {
   fprintf(stderr, "%s:%d:\tchoice %s contains symbol %s\n",
    menu->file->name, menu->lineno,
    sym->name ? sym->name : "<choice>",
    next_sym->name ? next_sym->name : "<choice>");
  } else if (sym_is_choice_value(sym)) {
   fprintf(stderr, "%s:%d:\tsymbol %s is part of choice %s\n",
    menu->file->name, menu->lineno,
    sym->name ? sym->name : "<choice>",
    next_sym->name ? next_sym->name : "<choice>");
  } else {
   fprintf(stderr, "%s:%d:\tsymbol %s is selected by %s\n",
    prop->file->name, prop->lineno,
    sym->name ? sym->name : "<choice>",
    next_sym->name ? next_sym->name : "<choice>");
  }
 }

 if (check_top == &cv_stack)
  dep_stack_remove();
}
