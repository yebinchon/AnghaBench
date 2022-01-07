
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* Tree ;
struct TYPE_7__ {int i; } ;
struct TYPE_8__ {TYPE_1__ v; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_9__ {scalar_t__ op; } ;


 scalar_t__ CNST ;
 scalar_t__ I ;
 scalar_t__ U ;
 TYPE_5__* cast (TYPE_3__*,int ) ;
 TYPE_3__* constexpr (int) ;
 int error (char*) ;
 int inttype ;
 int needconst ;

int intexpr(int tok, int n) {
 Tree p = constexpr(tok);

 needconst++;
 if (p->op == CNST+I || p->op == CNST+U)
  n = cast(p, inttype)->u.v.i;
 else
  error("integer expression must be constant\n");
 needconst--;
 return n;
}
