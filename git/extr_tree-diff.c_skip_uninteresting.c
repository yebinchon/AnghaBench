
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_desc {scalar_t__ size; int entry; } ;
struct strbuf {int dummy; } ;
struct diff_options {int pathspec; TYPE_1__* repo; } ;
typedef enum interesting { ____Placeholder_interesting } interesting ;
struct TYPE_2__ {int index; } ;


 int all_entries_not_interesting ;
 int tree_entry_interesting (int ,int *,struct strbuf*,int ,int *) ;
 int update_tree_entry (struct tree_desc*) ;

__attribute__((used)) static void skip_uninteresting(struct tree_desc *t, struct strbuf *base,
          struct diff_options *opt)
{
 enum interesting match;

 while (t->size) {
  match = tree_entry_interesting(opt->repo->index, &t->entry,
            base, 0, &opt->pathspec);
  if (match) {
   if (match == all_entries_not_interesting)
    t->size = 0;
   break;
  }
  update_tree_entry(t);
 }
}
