
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiCombobox ;


 int editable ;
 int printf (char*,char*,int) ;
 scalar_t__ uiComboboxSelected (int *) ;
 int uiEditableComboboxSetText (int ,char*) ;

__attribute__((used)) static void onCBChanged(uiCombobox *c, void *data)
{
 printf("%s combobox changed to %d\n",
  (char *) data,
  (int) uiComboboxSelected(c));
 uiEditableComboboxSetText(editable, "changed");
}
