
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int numsides; int * next; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_10__ {int planenum; } ;


 int FreeBrush (TYPE_2__*) ;
 int SplitBrush2 (TYPE_2__*,int ,TYPE_2__**,TYPE_2__**) ;

bspbrush_t *IntersectBrush (bspbrush_t *a, bspbrush_t *b)
{
 int i;
 bspbrush_t *front, *back;
 bspbrush_t *in;

 in = a;
 for (i=0 ; i<b->numsides && in ; i++)
 {
  SplitBrush2(in, b->sides[i].planenum, &front, &back);
  if (in != a) FreeBrush(in);
  if (front) FreeBrush(front);
  in = back;
 }

 if (in == a) return ((void*)0);

 in->next = ((void*)0);
 return in;
}
