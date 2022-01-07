
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sym; } ;
struct expr {scalar_t__ type; TYPE_1__ left; } ;


 scalar_t__ E_SYMBOL ;
 int symbol_no ;

__attribute__((used)) static inline int expr_is_no(struct expr *e)
{
 return e && (e->type == E_SYMBOL && e->left.sym == &symbol_no);
}
