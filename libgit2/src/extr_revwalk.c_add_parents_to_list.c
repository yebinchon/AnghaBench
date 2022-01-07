
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ first_parent; int hide_cb_payload; scalar_t__ (* hide_cb ) (int *,int ) ;} ;
typedef TYPE_1__ git_revwalk ;
struct TYPE_10__ {int added; int uninteresting; unsigned short out_degree; int seen; int oid; struct TYPE_10__** parents; } ;
typedef TYPE_2__ git_commit_list_node ;
typedef int git_commit_list ;


 int git_commit_list_insert_by_date (TYPE_2__*,int **) ;
 int git_commit_list_parse (TYPE_1__*,TYPE_2__*) ;
 int mark_parents_uninteresting (TYPE_2__*) ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static int add_parents_to_list(git_revwalk *walk, git_commit_list_node *commit, git_commit_list **list)
{
 unsigned short i;
 int error;

 if (commit->added)
  return 0;

 commit->added = 1;
 if (commit->uninteresting) {
  for (i = 0; i < commit->out_degree; i++) {
   git_commit_list_node *p = commit->parents[i];
   p->uninteresting = 1;


   if ((error = git_commit_list_parse(walk, p)) < 0)
    return error;

   if (p->parents)
    mark_parents_uninteresting(p);

   p->seen = 1;
   git_commit_list_insert_by_date(p, list);
  }

  return 0;
 }






 for (i = 0; i < commit->out_degree; i++) {
  git_commit_list_node *p = commit->parents[i];

  if ((error = git_commit_list_parse(walk, p)) < 0)
   return error;

  if (walk->hide_cb && walk->hide_cb(&p->oid, walk->hide_cb_payload))
   continue;

  if (!p->seen) {
   p->seen = 1;
   git_commit_list_insert_by_date(p, list);
  }

  if (walk->first_parent)
   break;
 }
 return 0;
}
