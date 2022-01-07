
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topo_walk_info {int explore_queue; int author_date; } ;
struct rev_info {scalar_t__ sort_order; int max_age; struct topo_walk_info* topo_walk_info; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {int date; struct commit_list* parents; TYPE_1__ object; } ;


 scalar_t__ REV_SORT_BY_AUTHOR_DATE ;
 int TOPO_WALK_EXPLORED ;
 int UNINTERESTING ;
 int mark_parents_uninteresting (struct commit*) ;
 scalar_t__ parse_commit_gently (struct commit*,int) ;
 struct commit* prio_queue_get (int *) ;
 scalar_t__ process_parents (struct rev_info*,struct commit*,int *,int *) ;
 int record_author_date (int *,struct commit*) ;
 int test_flag_and_insert (int *,int ,int ) ;

__attribute__((used)) static void explore_walk_step(struct rev_info *revs)
{
 struct topo_walk_info *info = revs->topo_walk_info;
 struct commit_list *p;
 struct commit *c = prio_queue_get(&info->explore_queue);

 if (!c)
  return;

 if (parse_commit_gently(c, 1) < 0)
  return;

 if (revs->sort_order == REV_SORT_BY_AUTHOR_DATE)
  record_author_date(&info->author_date, c);

 if (revs->max_age != -1 && (c->date < revs->max_age))
  c->object.flags |= UNINTERESTING;

 if (process_parents(revs, c, ((void*)0), ((void*)0)) < 0)
  return;

 if (c->object.flags & UNINTERESTING)
  mark_parents_uninteresting(c);

 for (p = c->parents; p; p = p->next)
  test_flag_and_insert(&info->explore_queue, p->item, TOPO_WALK_EXPLORED);
}
