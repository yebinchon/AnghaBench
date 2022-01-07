
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int printf (char*,...) ;
 int puts (char*) ;

int main(void)
{

 puts(_("TEST: A C test string"));


 printf(_("TEST: A C test string %s"), "variable");


 printf(_("TEST: Hello World!"));


 printf(_("TEST: Old English Runes"));


 printf(_("TEST: ‘single’ and “double” quotes"));
}
