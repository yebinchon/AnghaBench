
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int rb ;
 int uiRadioButtonsSetSelected (int ,int) ;

__attribute__((used)) static void selectNone(uiButton *b, void *data)
{

 uiRadioButtonsSetSelected(rb, -1);
}
