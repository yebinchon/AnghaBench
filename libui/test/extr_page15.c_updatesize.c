
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int fullscreen ;
 int height ;
 int uiCheckboxSetChecked (int ,int ) ;
 int uiSpinboxSetValue (int ,int) ;
 int uiWindowContentSize (int *,int*,int*) ;
 int uiWindowFullscreen (int *) ;
 int width ;

__attribute__((used)) static void updatesize(uiWindow *w)
{
 int xp, yp;

 uiWindowContentSize(w, &xp, &yp);
 uiSpinboxSetValue(width, xp);
 uiSpinboxSetValue(height, yp);

 uiCheckboxSetChecked(fullscreen, uiWindowFullscreen(w));
}
