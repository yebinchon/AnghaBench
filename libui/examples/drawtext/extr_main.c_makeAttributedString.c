
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiOpenTypeFeatures ;
typedef int uiAttribute ;


 int appendWithAttribute (char*,int *,int *) ;
 int attrstr ;
 int uiAttributedStringAppendUnattributed (int ,char*) ;
 int uiFreeOpenTypeFeatures (int *) ;
 int uiNewAttributedString (char*) ;
 int * uiNewBackgroundAttribute (double,double,double,double) ;
 int * uiNewColorAttribute (double,double,double,double) ;
 int * uiNewFamilyAttribute (char*) ;
 int * uiNewFeaturesAttribute (int *) ;
 int * uiNewItalicAttribute (int ) ;
 int * uiNewOpenTypeFeatures () ;
 int * uiNewSizeAttribute (int) ;
 int * uiNewStretchAttribute (int ) ;
 int * uiNewUnderlineAttribute (int ) ;
 int * uiNewUnderlineColorAttribute (int ,double,double,double,double) ;
 int * uiNewWeightAttribute (int ) ;
 int uiOpenTypeFeaturesAdd (int *,char,char,char,char,int) ;
 int uiTextItalicItalic ;
 int uiTextStretchCondensed ;
 int uiTextWeightBold ;
 int uiUnderlineColorCustom ;
 int uiUnderlineColorSpelling ;
 int uiUnderlineDouble ;
 int uiUnderlineSingle ;
 int uiUnderlineSuggestion ;

__attribute__((used)) static void makeAttributedString(void)
{
 uiAttribute *attr, *attr2;
 uiOpenTypeFeatures *otf;

 attrstr = uiNewAttributedString(
  "Drawing strings with libui is done with the uiAttributedString and uiDrawTextLayout objects.\n"
  "uiAttributedString lets you have a variety of attributes: ");

 attr = uiNewFamilyAttribute("Courier New");
 appendWithAttribute("font family", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewSizeAttribute(18);
 appendWithAttribute("font size", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewWeightAttribute(uiTextWeightBold);
 appendWithAttribute("font weight", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewItalicAttribute(uiTextItalicItalic);
 appendWithAttribute("font italicness", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewStretchAttribute(uiTextStretchCondensed);
 appendWithAttribute("font stretch", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewColorAttribute(0.75, 0.25, 0.5, 0.75);
 appendWithAttribute("text color", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 attr = uiNewBackgroundAttribute(0.5, 0.5, 0.25, 0.5);
 appendWithAttribute("text background color", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");


 attr = uiNewUnderlineAttribute(uiUnderlineSingle);
 appendWithAttribute("underline style", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, ", ");

 uiAttributedStringAppendUnattributed(attrstr, "and ");
 attr = uiNewUnderlineAttribute(uiUnderlineDouble);
 attr2 = uiNewUnderlineColorAttribute(uiUnderlineColorCustom, 1.0, 0.0, 0.5, 1.0);
 appendWithAttribute("underline color", attr, attr2);
 uiAttributedStringAppendUnattributed(attrstr, ". ");

 uiAttributedStringAppendUnattributed(attrstr, "Furthermore, there are attributes allowing for ");
 attr = uiNewUnderlineAttribute(uiUnderlineSuggestion);
 attr2 = uiNewUnderlineColorAttribute(uiUnderlineColorSpelling, 0, 0, 0, 0);
 appendWithAttribute("special underlines for indicating spelling errors", attr, attr2);
 uiAttributedStringAppendUnattributed(attrstr, " (and other types of errors) ");

 uiAttributedStringAppendUnattributed(attrstr, "and control over OpenType features such as ligatures (for instance, ");
 otf = uiNewOpenTypeFeatures();
 uiOpenTypeFeaturesAdd(otf, 'l', 'i', 'g', 'a', 0);
 attr = uiNewFeaturesAttribute(otf);
 appendWithAttribute("afford", attr, ((void*)0));
 uiAttributedStringAppendUnattributed(attrstr, " vs. ");
 uiOpenTypeFeaturesAdd(otf, 'l', 'i', 'g', 'a', 1);
 attr = uiNewFeaturesAttribute(otf);
 appendWithAttribute("afford", attr, ((void*)0));
 uiFreeOpenTypeFeatures(otf);
 uiAttributedStringAppendUnattributed(attrstr, ").\n");

 uiAttributedStringAppendUnattributed(attrstr, "Use the controls opposite to the text to control properties of the text.");
}
