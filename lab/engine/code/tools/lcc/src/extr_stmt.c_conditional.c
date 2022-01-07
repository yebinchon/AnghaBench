
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_7__ {int type; } ;


 int Aflag ;
 TYPE_1__* cond (TYPE_1__*) ;
 TYPE_1__* expr (int) ;
 int funcname (TYPE_1__*) ;
 scalar_t__ isfunc (int ) ;
 int warning (char*,int ) ;

__attribute__((used)) static Tree conditional(int tok) {
 Tree p = expr(tok);

 if (Aflag > 1 && isfunc(p->type))
  warning("%s used in a conditional expression\n",
   funcname(p));
 return cond(p);
}
