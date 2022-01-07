
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ val; } ;
struct symbol {TYPE_1__ curr; } ;



__attribute__((used)) static inline struct symbol *sym_get_choice_value(struct symbol *sym)
{
 return (struct symbol *)sym->curr.val;
}
