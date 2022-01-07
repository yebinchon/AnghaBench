
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int entry ;
 int querySpaced (char*) ;
 int uiEntrySetText (int ,char*) ;

__attribute__((used)) static void showSpaced(uiButton *b, void *data)
{
 char s[12];

 querySpaced(s);
 uiEntrySetText(entry, s);
}
