
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMultilineEntry ;


 int GTK_POLICY_NEVER ;
 int GTK_WRAP_WORD ;
 int * finishMultilineEntry (int ,int ) ;

uiMultilineEntry *uiNewMultilineEntry(void)
{
 return finishMultilineEntry(GTK_POLICY_NEVER, GTK_WRAP_WORD);
}
