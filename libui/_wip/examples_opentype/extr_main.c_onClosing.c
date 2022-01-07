
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int uiControl (int *) ;
 int uiControlHide (int ) ;
 int uiQuit () ;

__attribute__((used)) static int onClosing(uiWindow *w, void *data)
{


 uiControlHide(uiControl(w));
 uiQuit();
 return 0;
}
