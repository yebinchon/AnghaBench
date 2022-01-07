
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiCheckbox ;


 int setSpaced (int ) ;
 int spaced ;
 int uiCheckboxChecked (int ) ;

__attribute__((used)) static void toggleSpaced(uiCheckbox *c, void *data)
{
 setSpaced(uiCheckboxChecked(spaced));
}
