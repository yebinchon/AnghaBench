
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {double* d; int b; int type; } ;


 int add (int *,struct piece*) ;
 int newFigureArc ;
 int uiPi ;

void uiDrawPathNewFigureWithArc(uiDrawPath *p, double xCenter, double yCenter, double radius, double startAngle, double sweep, int negative)
{
 struct piece piece;

 if (sweep > 2 * uiPi)
  sweep = 2 * uiPi;
 piece.type = newFigureArc;
 piece.d[0] = xCenter;
 piece.d[1] = yCenter;
 piece.d[2] = radius;
 piece.d[3] = startAngle;
 piece.d[4] = sweep;
 piece.b = negative;
 add(p, &piece);
}
