
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int saved_parents_slab; } ;
struct commit_list {int dummy; } ;
struct commit {struct commit_list* parents; } ;


 struct commit_list* EMPTY_PARENT_LIST ;
 struct commit_list** saved_parents_at (int ,struct commit const*) ;

struct commit_list *get_saved_parents(struct rev_info *revs, const struct commit *commit)
{
 struct commit_list *parents;

 if (!revs->saved_parents_slab)
  return commit->parents;

 parents = *saved_parents_at(revs->saved_parents_slab, commit);
 if (parents == EMPTY_PARENT_LIST)
  return ((void*)0);
 return parents;
}
