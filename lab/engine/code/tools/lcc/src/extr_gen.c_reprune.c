
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inst; struct node** kids; } ;
struct node {TYPE_1__ x; struct node** kids; } ;
struct TYPE_5__ {int (* target ) (struct node*) ;} ;
struct TYPE_6__ {TYPE_2__ x; } ;
typedef struct node* Node ;


 TYPE_3__* IR ;
 int debug (int ) ;
 int fprint (int ,char*,struct node**,struct node*,struct node*) ;
 int stderr ;
 int stub1 (struct node*) ;

__attribute__((used)) static int reprune(Node *pp, int k, int n, Node p) {
 struct node x, *q = *pp;

 if (q == ((void*)0) || k > n)
  return k;
 else if (q->x.inst == 0)
  return reprune(&q->kids[1],
   reprune(&q->kids[0], k, n, p), n, p);
 if (k == n) {
  debug(fprint(stderr, "(reprune changes %x from %x to %x)\n", pp, *pp, p->x.kids[n]));
  *pp = p->x.kids[n];
  x = *p;
  (IR->x.target)(&x);
 }
 return k + 1;
}
