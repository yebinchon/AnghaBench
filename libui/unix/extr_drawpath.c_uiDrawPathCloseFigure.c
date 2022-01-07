
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;
struct piece {int type; } ;


 int add (int *,struct piece*) ;
 int closeFigure ;

void uiDrawPathCloseFigure(uiDrawPath *p)
{
 struct piece piece;

 piece.type = closeFigure;
 add(p, &piece);
}
