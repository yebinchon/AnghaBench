
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op; scalar_t__* syms; scalar_t__* kids; } ;
struct dag {TYPE_1__ node; struct dag* hlink; } ;
typedef scalar_t__ Symbol ;
typedef scalar_t__ Node ;


 int NELEMS (struct dag**) ;
 struct dag** buckets ;
 struct dag* dagnode (int,scalar_t__,scalar_t__,scalar_t__) ;
 int nodecount ;
 unsigned long opindex (int) ;

__attribute__((used)) static Node node(int op, Node l, Node r, Symbol sym) {
 int i;
 struct dag *p;

 i = (opindex(op)^((unsigned long)sym>>2))&(NELEMS(buckets)-1);
 for (p = buckets[i]; p; p = p->hlink)
  if (p->node.op == op && p->node.syms[0] == sym
  && p->node.kids[0] == l && p->node.kids[1] == r)
   return &p->node;
 p = dagnode(op, l, r, sym);
 p->hlink = buckets[i];
 buckets[i] = p;
 ++nodecount;
 return &p->node;
}
