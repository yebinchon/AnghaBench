
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEditableCombobox ;


 int printf (char*,char*,char*) ;
 char* uiEditableComboboxText (int *) ;
 int uiFreeText (char*) ;

__attribute__((used)) static void onECBChanged(uiEditableCombobox *c, void *data)
{
 char *t;

 t = uiEditableComboboxText(c);
 printf("%s combobox changed to %s\n",
  (char *) data,
  t);
 uiFreeText(t);
}
