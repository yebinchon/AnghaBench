
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {double* d; int type; } ;


 int add (int *,struct piece*) ;
 int newFigure ;

void uiDrawPathNewFigure(uiDrawPath *p, double x, double y)
{
 struct piece piece;

 piece.type = newFigure;
 piece.d[0] = x;
 piece.d[1] = y;
 add(p, &piece);
}
