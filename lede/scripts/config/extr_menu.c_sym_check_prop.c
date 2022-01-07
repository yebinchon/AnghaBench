
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int type; int name; struct property* prop; } ;
struct property {int type; TYPE_3__* expr; struct property* next; } ;
struct TYPE_5__ {struct symbol* sym; } ;
struct TYPE_4__ {struct symbol* sym; } ;
struct TYPE_6__ {TYPE_2__ right; TYPE_1__ left; int type; } ;


 int E_SYMBOL ;



 int S_BOOLEAN ;
 int S_HEX ;
 int S_INT ;
 int S_STRING ;
 int S_TRISTATE ;
 int S_UNKNOWN ;
 int menu_validate_number (struct symbol*,struct symbol*) ;
 struct symbol* prop_get_symbol (struct property*) ;
 int prop_warn (struct property*,char*,...) ;

__attribute__((used)) static void sym_check_prop(struct symbol *sym)
{
 struct property *prop;
 struct symbol *sym2;
 for (prop = sym->prop; prop; prop = prop->next) {
  switch (prop->type) {
  case 130:
   if ((sym->type == S_STRING || sym->type == S_INT || sym->type == S_HEX) &&
       prop->expr->type != E_SYMBOL)
    prop_warn(prop,
        "default for config symbol '%s'"
        " must be a single symbol", sym->name);
   if (prop->expr->type != E_SYMBOL)
    break;
   sym2 = prop_get_symbol(prop);
   if (sym->type == S_HEX || sym->type == S_INT) {
    if (!menu_validate_number(sym, sym2))
     prop_warn(prop,
         "'%s': number is invalid",
         sym->name);
   }
   break;
  case 128:
   sym2 = prop_get_symbol(prop);
   if (sym->type != S_BOOLEAN && sym->type != S_TRISTATE)
    prop_warn(prop,
        "config symbol '%s' uses select, but is "
        "not boolean or tristate", sym->name);
   else if (sym2->type != S_UNKNOWN &&
     sym2->type != S_BOOLEAN &&
     sym2->type != S_TRISTATE)
    prop_warn(prop,
        "'%s' has wrong type. 'select' only "
        "accept arguments of boolean and "
        "tristate type", sym2->name);
   break;
  case 129:
   if (sym->type != S_INT && sym->type != S_HEX)
    prop_warn(prop, "range is only allowed "
      "for int or hex symbols");
   if (!menu_validate_number(sym, prop->expr->left.sym) ||
       !menu_validate_number(sym, prop->expr->right.sym))
    prop_warn(prop, "range is invalid");
   break;
  default:
   ;
  }
 }
}
