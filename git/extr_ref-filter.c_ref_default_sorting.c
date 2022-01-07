
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int atom; int * next; } ;


 int parse_sorting_atom (char const*) ;
 struct ref_sorting* xcalloc (int,int) ;

struct ref_sorting *ref_default_sorting(void)
{
 static const char cstr_name[] = "refname";

 struct ref_sorting *sorting = xcalloc(1, sizeof(*sorting));

 sorting->next = ((void*)0);
 sorting->atom = parse_sorting_atom(cstr_name);
 return sorting;
}
