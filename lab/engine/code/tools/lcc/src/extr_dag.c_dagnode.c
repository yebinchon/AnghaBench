
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op; int * syms; TYPE_2__** kids; } ;
struct dag {TYPE_1__ node; } ;
struct TYPE_6__ {int count; } ;
typedef int Symbol ;
typedef TYPE_2__* Node ;


 int FUNC ;
 int NEW0 (struct dag*,int ) ;

__attribute__((used)) static struct dag *dagnode(int op, Node l, Node r, Symbol sym) {
 struct dag *p;

 NEW0(p, FUNC);
 p->node.op = op;
 if ((p->node.kids[0] = l) != ((void*)0))
  ++l->count;
 if ((p->node.kids[1] = r) != ((void*)0))
  ++r->count;
 p->node.syms[0] = sym;
 return p;
}
