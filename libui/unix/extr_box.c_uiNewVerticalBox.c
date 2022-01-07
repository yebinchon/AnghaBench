
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int GTK_ORIENTATION_VERTICAL ;
 int * finishNewBox (int ) ;

uiBox *uiNewVerticalBox(void)
{
 return finishNewBox(GTK_ORIENTATION_VERTICAL);
}
