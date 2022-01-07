
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiCombobox ;
struct TYPE_2__ {int * name; } ;


 TYPE_1__* tests ;
 int uiComboboxAppend (int *,int *) ;

void populateComboboxWithTests(uiCombobox *c)
{
 size_t i;

 for (i = 0; tests[i].name != ((void*)0); i++)
  uiComboboxAppend(c, tests[i].name);
}
