
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawFontFamilies ;
typedef int uiButton ;


 char* uiDrawFontFamiliesFamily (int *,int) ;
 int uiDrawFontFamiliesNumFamilies (int *) ;
 int uiDrawFreeFontFamilies (int *) ;
 int * uiDrawListFontFamilies () ;
 int uiFreeText (char*) ;
 int uiMultilineEntry (void*) ;
 int uiMultilineEntryAppend (int ,char*) ;
 int uiMultilineEntrySetText (int ,char*) ;

__attribute__((used)) static void onListFonts(uiButton *b, void *data)
{
 uiDrawFontFamilies *ff;
 char *this;
 int i, n;

 uiMultilineEntrySetText(uiMultilineEntry(data), "");
 ff = uiDrawListFontFamilies();
 n = uiDrawFontFamiliesNumFamilies(ff);
 for (i = 0; i < n; i++) {
  this = uiDrawFontFamiliesFamily(ff, i);
  uiMultilineEntryAppend(uiMultilineEntry(data), this);
  uiMultilineEntryAppend(uiMultilineEntry(data), "\n");
  uiFreeText(this);
 }
 uiDrawFreeFontFamilies(ff);
}
