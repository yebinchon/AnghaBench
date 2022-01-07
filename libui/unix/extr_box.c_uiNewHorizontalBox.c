
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int GTK_ORIENTATION_HORIZONTAL ;
 int * finishNewBox (int ) ;

uiBox *uiNewHorizontalBox(void)
{
 return finishNewBox(GTK_ORIENTATION_HORIZONTAL);
}
