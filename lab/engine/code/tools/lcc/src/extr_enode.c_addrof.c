
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* Tree ;
struct TYPE_11__ {int sym; } ;
struct TYPE_12__ {int type; struct TYPE_12__** kids; TYPE_1__ u; int op; } ;
typedef int Symbol ;






 int assert (int) ;
 int error (char*) ;
 int generic (int ) ;
 TYPE_2__* idtree (int ) ;
 int root (TYPE_2__*) ;
 TYPE_2__* tree (int const,int ,int ,TYPE_2__*) ;
 TYPE_2__* value (TYPE_2__*) ;

Tree addrof(Tree p) {
 Tree q = p;

 for (;;)
  switch (generic(q->op)) {
  case 128:
   assert(q->kids[0] || q->kids[1]);
   q = q->kids[1] ? q->kids[1] : q->kids[0];
   continue;
  case 131:
   q = q->kids[1];
   continue;
  case 130: {
   Symbol t1 = q->u.sym;
   q->u.sym = 0;
   q = idtree(t1);

   }
  case 129:
   if (p == q)
    return q->kids[0];
   q = q->kids[0];
   return tree(128, q->type, root(p), q);
  default:
   error("addressable object required\n");
   return value(p);
  }
}
