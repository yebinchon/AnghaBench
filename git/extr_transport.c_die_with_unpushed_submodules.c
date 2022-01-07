
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 char* _ (char*) ;
 int die (char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int string_list_clear (struct string_list*,int ) ;

__attribute__((used)) static void die_with_unpushed_submodules(struct string_list *needs_pushing)
{
 int i;

 fprintf(stderr, _("The following submodule paths contain changes that can\n"
   "not be found on any remote:\n"));
 for (i = 0; i < needs_pushing->nr; i++)
  fprintf(stderr, "  %s\n", needs_pushing->items[i].string);
 fprintf(stderr, _("\nPlease try\n\n"
     "	git push --recurse-submodules=on-demand\n\n"
     "or cd to the path and use\n\n"
     "	git push\n\n"
     "to push them to a remote.\n\n"));

 string_list_clear(needs_pushing, 0);

 die(_("Aborting."));
}
