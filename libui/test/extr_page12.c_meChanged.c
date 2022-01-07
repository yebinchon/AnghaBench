
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMultilineEntry ;


 int printf (char*,char*) ;

__attribute__((used)) static void meChanged(uiMultilineEntry *e, void *data)
{
 printf("%s changed\n", (char *) data);
}
