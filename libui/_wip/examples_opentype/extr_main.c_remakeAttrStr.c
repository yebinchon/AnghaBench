
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiOpenTypeFeatures ;
struct TYPE_3__ {int * Features; int Type; } ;
typedef TYPE_1__ uiAttributeSpec ;


 int area ;
 int * attrstr ;
 int nullFeatures ;
 int textEntry ;
 int uiAreaQueueRedrawAll (int ) ;
 int uiAttributeFeatures ;
 int uiAttributedStringLen (int *) ;
 int uiAttributedStringSetAttribute (int *,TYPE_1__*,int ,int ) ;
 int uiCheckboxChecked (int ) ;
 char* uiEntryText (int ) ;
 int uiFreeAttributedString (int *) ;
 int uiFreeOpenTypeFeatures (int *) ;
 int uiFreeText (char*) ;
 int * uiNewAttributedString (char*) ;
 int * uiNewOpenTypeFeatures () ;

__attribute__((used)) static void remakeAttrStr(void)
{
 char *text;
 uiOpenTypeFeatures *otf;
 uiAttributeSpec spec;

 if (attrstr != ((void*)0))
  uiFreeAttributedString(attrstr);

 text = uiEntryText(textEntry);
 attrstr = uiNewAttributedString(text);
 uiFreeText(text);

 if (!uiCheckboxChecked(nullFeatures)) {
  otf = uiNewOpenTypeFeatures();

  spec.Type = uiAttributeFeatures;
  spec.Features = otf;
  uiAttributedStringSetAttribute(attrstr, &spec,
   0, uiAttributedStringLen(attrstr));

  uiFreeOpenTypeFeatures(otf);
 }

 uiAreaQueueRedrawAll(area);
}
