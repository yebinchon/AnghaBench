
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int uiMultilineEntry (void*) ;
 int uiMultilineEntrySetText (int ,char*) ;

__attribute__((used)) static void setClicked(uiButton *b, void *data)
{
 uiMultilineEntrySetText(uiMultilineEntry(data), "set");
}
