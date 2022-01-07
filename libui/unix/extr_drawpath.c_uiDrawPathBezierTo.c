
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {double* d; int type; } ;


 int add (int *,struct piece*) ;
 int bezierTo ;

void uiDrawPathBezierTo(uiDrawPath *p, double c1x, double c1y, double c2x, double c2y, double endX, double endY)
{
 struct piece piece;

 piece.type = bezierTo;
 piece.d[0] = c1x;
 piece.d[1] = c1y;
 piece.d[2] = c2x;
 piece.d[3] = c2y;
 piece.d[4] = endX;
 piece.d[5] = endY;
 add(p, &piece);
}
