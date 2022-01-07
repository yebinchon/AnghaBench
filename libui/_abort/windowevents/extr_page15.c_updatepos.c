
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int uiSpinboxSetValue (int ,int) ;
 int uiWindowPosition (int *,int*,int*) ;
 int x ;
 int y ;

__attribute__((used)) static void updatepos(uiWindow *w)
{
 int xp, yp;

 uiWindowPosition(w, &xp, &yp);
 uiSpinboxSetValue(x, xp);
 uiSpinboxSetValue(y, yp);
}
