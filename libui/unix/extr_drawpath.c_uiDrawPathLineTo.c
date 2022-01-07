
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {double* d; int type; } ;


 int add (int *,struct piece*) ;
 int lineTo ;

void uiDrawPathLineTo(uiDrawPath *p, double x, double y)
{
 struct piece piece;

 piece.type = lineTo;
 piece.d[0] = x;
 piece.d[1] = y;
 add(p, &piece);
}
