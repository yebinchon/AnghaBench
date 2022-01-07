
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int reverse; int version; int atom; struct ref_sorting* next; } ;


 int parse_sorting_atom (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 struct ref_sorting* xcalloc (int,int) ;

void parse_ref_sorting(struct ref_sorting **sorting_tail, const char *arg)
{
 struct ref_sorting *s;

 s = xcalloc(1, sizeof(*s));
 s->next = *sorting_tail;
 *sorting_tail = s;

 if (*arg == '-') {
  s->reverse = 1;
  arg++;
 }
 if (skip_prefix(arg, "version:", &arg) ||
     skip_prefix(arg, "v:", &arg))
  s->version = 1;
 s->atom = parse_sorting_atom(arg);
}
