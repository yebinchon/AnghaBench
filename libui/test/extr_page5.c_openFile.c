
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int parent ;
 int uiFreeText (char*) ;
 int uiLabel (void*) ;
 int uiLabelSetText (int ,char*) ;
 char* uiOpenFile (int ) ;

__attribute__((used)) static void openFile(uiButton *b, void *data)
{
 char *fn;

 fn = uiOpenFile(parent);
 if (fn == ((void*)0))
  uiLabelSetText(uiLabel(data), "(cancelled)");
 else {
  uiLabelSetText(uiLabel(data), fn);
  uiFreeText(fn);
 }
}
