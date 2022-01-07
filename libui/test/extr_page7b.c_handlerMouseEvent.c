
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; } ;
typedef TYPE_1__ uiAreaMouseEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;


 int label ;
 int sprintf (char*,char*,double,double) ;
 int uiCheckboxSetText (int ,char*) ;

__attribute__((used)) static void handlerMouseEvent(uiAreaHandler *a, uiArea *area, uiAreaMouseEvent *e)
{
 char pos[128];



 sprintf(pos, "X %g Y %g", e->X, e->Y);
 uiCheckboxSetText(label, pos);
}
