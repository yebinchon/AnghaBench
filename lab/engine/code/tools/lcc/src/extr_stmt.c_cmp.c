
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__* Symbol ;


 int cast (int ,int ) ;
 int cnsttree (int ,long) ;
 int eqtree (int,int ,int ) ;
 int idtree (TYPE_1__*) ;
 int listnodes (int ,int,int ) ;
 int signedint (int ) ;

__attribute__((used)) static void cmp(int op, Symbol p, long n, int lab) {
 Type ty = signedint(p->type);

 listnodes(eqtree(op,
   cast(idtree(p), ty),
   cnsttree(ty, n)),
  lab, 0);
}
