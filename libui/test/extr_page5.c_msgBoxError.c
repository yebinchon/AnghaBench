
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
 int uiMsgBoxError (int ,char*,char*) ;

__attribute__((used)) static void msgBoxError(uiButton *b, void *data)
{
 char *t, *d;

 t = uiEntryText(title);
 d = uiEntryText(description);
 uiMsgBoxError(parent, t, d);
 uiFreeText(d);
 uiFreeText(t);
}
