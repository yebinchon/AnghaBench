
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int description ;
 int parent ;
 int title ;
 char* uiEntryText (int ) ;
 int uiFreeText (char*) ;
 int uiMsgBox (int ,char*,char*) ;

__attribute__((used)) static void msgBox(uiButton *b, void *data)
{
 char *t, *d;

 t = uiEntryText(title);
 d = uiEntryText(description);
 uiMsgBox(parent, t, d);
 uiFreeText(d);
 uiFreeText(t);
}
