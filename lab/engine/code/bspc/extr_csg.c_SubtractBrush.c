
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int numsides; struct TYPE_12__* next; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_11__ {int planenum; } ;


 int FreeBrush (TYPE_2__*) ;
 int FreeBrushList (TYPE_2__*) ;
 int SplitBrush2 (TYPE_2__*,int ,TYPE_2__**,TYPE_2__**) ;

bspbrush_t *SubtractBrush (bspbrush_t *a, bspbrush_t *b)
{
 int i;
 bspbrush_t *front, *back;
 bspbrush_t *out, *in;

 in = a;
 out = ((void*)0);
 for (i = 0; i < b->numsides && in; i++)
 {
  SplitBrush2(in, b->sides[i].planenum, &front, &back);
  if (in != a) FreeBrush(in);
  if (front)
  {
   front->next = out;
   out = front;
  }
  in = back;
 }
 if (in)
 {
  FreeBrush (in);
 }
 else
 {
  FreeBrushList (out);
  return a;
 }
 return out;
}
