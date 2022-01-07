
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiCombobox ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void shouldntHappen(uiCombobox *c, void *data)
{
 fprintf(stderr, "YOU SHOULD NOT SEE THIS. If you do, uiComboboxSetSelected() is triggering uiComboboxOnSelected(), which it should not.\n");
}
