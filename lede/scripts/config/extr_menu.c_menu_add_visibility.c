
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expr {int dummy; } ;
struct TYPE_2__ {int visibility; } ;


 TYPE_1__* current_entry ;
 int expr_alloc_and (int ,struct expr*) ;

void menu_add_visibility(struct expr *expr)
{
 current_entry->visibility = expr_alloc_and(current_entry->visibility,
     expr);
}
