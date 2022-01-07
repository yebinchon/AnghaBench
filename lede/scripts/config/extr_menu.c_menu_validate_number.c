
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ type; int name; } ;


 scalar_t__ S_HEX ;
 scalar_t__ S_INT ;
 scalar_t__ S_UNKNOWN ;
 scalar_t__ sym_string_valid (struct symbol*,int ) ;

__attribute__((used)) static int menu_validate_number(struct symbol *sym, struct symbol *sym2)
{
 return sym2->type == S_INT || sym2->type == S_HEX ||
        (sym2->type == S_UNKNOWN && sym_string_valid(sym, sym2->name));
}
