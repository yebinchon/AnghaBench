
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiAttribute ;


 int attrstr ;
 size_t strlen (char const*) ;
 int uiAttributedStringAppendUnattributed (int ,char const*) ;
 size_t uiAttributedStringLen (int ) ;
 int uiAttributedStringSetAttribute (int ,int *,size_t,size_t) ;

__attribute__((used)) static void appendWithAttribute(const char *what, uiAttribute *attr, uiAttribute *attr2)
{
 size_t start, end;

 start = uiAttributedStringLen(attrstr);
 end = start + strlen(what);
 uiAttributedStringAppendUnattributed(attrstr, what);
 uiAttributedStringSetAttribute(attrstr, attr, start, end);
 if (attr2 != ((void*)0))
  uiAttributedStringSetAttribute(attrstr, attr2, start, end);
}
