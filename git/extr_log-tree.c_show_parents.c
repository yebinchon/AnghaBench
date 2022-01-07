
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;
typedef int FILE ;


 char* find_unique_abbrev (int *,int) ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void show_parents(struct commit *commit, int abbrev, FILE *file)
{
 struct commit_list *p;
 for (p = commit->parents; p ; p = p->next) {
  struct commit *parent = p->item;
  fprintf(file, " %s", find_unique_abbrev(&parent->object.oid, abbrev));
 }
}
