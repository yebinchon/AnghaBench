
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {double* d; int type; } ;


 int add (int *,struct piece*) ;
 int addRect ;

void uiDrawPathAddRectangle(uiDrawPath *p, double x, double y, double width, double height)
{
 struct piece piece;

 piece.type = addRect;
 piece.d[0] = x;
 piece.d[1] = y;
 piece.d[2] = width;
 piece.d[3] = height;
 add(p, &piece);
}
