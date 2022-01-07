
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct category_description {int * member_1; int member_0; } ;


 int CAT_guide ;
 int * N_ (char*) ;
 int print_cmd_by_category (struct category_description*,int *) ;
 int putchar (char) ;

void list_common_guides_help(void)
{
 struct category_description catdesc[] = {
  { CAT_guide, N_("The common Git guides are:") },
  { 0, ((void*)0) }
 };
 print_cmd_by_category(catdesc, ((void*)0));
 putchar('\n');
}
