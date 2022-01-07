
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiForm ;


 int append (int *,int ) ;
 int form ;
 int * uiNewForm () ;

uiForm *newForm(void)
{
 uiForm *f;

 f = uiNewForm();
 append(f, form);
 return f;
}
