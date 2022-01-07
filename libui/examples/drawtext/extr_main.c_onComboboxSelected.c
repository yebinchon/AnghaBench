
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiCombobox ;


 int area ;
 int uiAreaQueueRedrawAll (int ) ;

__attribute__((used)) static void onComboboxSelected(uiCombobox *b, void *data)
{
 uiAreaQueueRedrawAll(area);
}
