
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEntry ;


 double atof (char*) ;
 char* uiEntryText (int *) ;
 int uiFreeText (char*) ;

__attribute__((used)) static double entryDouble(uiEntry *e)
{
 char *s;
 double d;

 s = uiEntryText(e);
 d = atof(s);
 uiFreeText(s);
 return d;
}
