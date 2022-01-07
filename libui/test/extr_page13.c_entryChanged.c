
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEntry ;


 int printf (char*,char const*,char*) ;
 char* uiEntryText (int *) ;
 int uiFreeText (char*) ;

__attribute__((used)) static void entryChanged(uiEntry *e, void *data)
{
 char *text;

 text = uiEntryText(e);
 printf("%s entry changed: %s\n", (const char *) data, text);
 uiFreeText(text);
}
