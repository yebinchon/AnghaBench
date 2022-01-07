
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiCheckbox ;


 int checkboxChecked ;
 int panel ;
 int uiBoxAppend (int ,int ,int ) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiControl (int *) ;
 int * uiNewCheckbox (char const*) ;

__attribute__((used)) static uiCheckbox *newCheckbox(const char *text)
{
 uiCheckbox *c;

 c = uiNewCheckbox(text);
 uiCheckboxOnToggled(c, checkboxChecked, ((void*)0));
 uiBoxAppend(panel, uiControl(c), 0);
 return c;
}
