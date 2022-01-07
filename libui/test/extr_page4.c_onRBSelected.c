
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiRadioButtons ;


 int printf (char*,int) ;
 int uiRadioButtonsSelected (int *) ;

__attribute__((used)) static void onRBSelected(uiRadioButtons *r, void *data)
{
 printf("radio buttons %d\n", uiRadioButtonsSelected(r));
}
