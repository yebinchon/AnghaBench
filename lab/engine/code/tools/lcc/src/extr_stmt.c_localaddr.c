
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* Tree ;
struct TYPE_4__ {int * sym; } ;
struct TYPE_5__ {int const op; struct TYPE_5__** kids; TYPE_1__ u; } ;
typedef int * Symbol ;
 int assert (int) ;
 int generic (int const) ;

__attribute__((used)) static Symbol localaddr(Tree p) {
 if (p == ((void*)0))
  return ((void*)0);
 switch (generic(p->op)) {
 case 129: case 131: case 133:
  return ((void*)0);
 case 134: case 135:
  return p->u.sym;
 case 128: case 132:
  if (p->kids[1])
   return localaddr(p->kids[1]);
  return localaddr(p->kids[0]);
 case 130: {
  Symbol q;
  assert(p->kids[1] && p->kids[1]->op == 128);
  if ((q = localaddr(p->kids[1]->kids[0])) != ((void*)0))
   return q;
  return localaddr(p->kids[1]->kids[1]);
  }
 default: {
  Symbol q;
  if (p->kids[0] && (q = localaddr(p->kids[0])) != ((void*)0))
   return q;
  return localaddr(p->kids[1]);
  }
 }
}
