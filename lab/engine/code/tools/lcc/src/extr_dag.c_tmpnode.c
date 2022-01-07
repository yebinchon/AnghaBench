
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ count; TYPE_1__** syms; } ;
struct TYPE_9__ {int type; } ;
typedef TYPE_1__* Symbol ;
typedef TYPE_2__* Node ;


 scalar_t__ ADDRL ;
 scalar_t__ INDIR ;
 int assert (TYPE_1__*) ;
 TYPE_2__* newnode (scalar_t__,TYPE_2__*,int *,TYPE_1__*) ;
 scalar_t__ ttob (int ) ;
 int voidptype ;

__attribute__((used)) static Node tmpnode(Node p) {
 Symbol tmp = p->syms[2];

 assert(tmp);
 if (--p->count == 0)
  p->syms[2] = ((void*)0);
 p = newnode(INDIR + ttob(tmp->type),
  newnode(ADDRL + ttob(voidptype), ((void*)0), ((void*)0), tmp), ((void*)0), ((void*)0));
 p->count = 1;
 return p;
}
