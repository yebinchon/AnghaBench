
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int cbox ;
 int editable ;
 int rb ;
 int uiComboboxAppend (int ,char*) ;
 int uiEditableComboboxAppend (int ,char*) ;
 int uiRadioButtonsAppend (int ,char*) ;

__attribute__((used)) static void appendCBRB(uiButton *b, void *data)
{
 uiComboboxAppend(cbox, "New Item");
 uiEditableComboboxAppend(editable, "New Item");
 uiRadioButtonsAppend(rb, "New Item");
}
