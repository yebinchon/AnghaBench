
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int file; } ;
struct rev_info {TYPE_3__ diffopt; int children; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {int object; } ;
struct TYPE_4__ {int oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 char* find_unique_abbrev (int *,int) ;
 int fprintf (int ,char*,char*) ;
 struct commit_list* lookup_decoration (int *,int *) ;

__attribute__((used)) static void show_children(struct rev_info *opt, struct commit *commit, int abbrev)
{
 struct commit_list *p = lookup_decoration(&opt->children, &commit->object);
 for ( ; p; p = p->next) {
  fprintf(opt->diffopt.file, " %s", find_unique_abbrev(&p->item->object.oid, abbrev));
 }
}
