
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
struct gstr {int dummy; } ;


 int menu_get_ext_help (struct menu*,struct gstr*) ;
 int printf (char*,char*) ;
 int str_free (struct gstr*) ;
 char* str_get (struct gstr*) ;
 struct gstr str_new () ;

__attribute__((used)) static void print_help(struct menu *menu)
{
 struct gstr help = str_new();

 menu_get_ext_help(menu, &help);

 printf("\n%s\n", str_get(&help));
 str_free(&help);
}
