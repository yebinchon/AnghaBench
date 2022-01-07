
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMultilineEntry ;


 int GTK_POLICY_AUTOMATIC ;
 int GTK_WRAP_NONE ;
 int * finishMultilineEntry (int ,int ) ;

uiMultilineEntry *uiNewNonWrappingMultilineEntry(void)
{
 return finishMultilineEntry(GTK_POLICY_AUTOMATIC, GTK_WRAP_NONE);
}
