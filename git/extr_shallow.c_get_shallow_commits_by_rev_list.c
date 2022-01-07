
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object {int flags; int oid; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {struct object object; struct commit_list* parents; } ;


 int clear_object_flags (int) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int die (char*,...) ;
 int free_commit_list (struct commit_list*) ;
 int is_repository_shallow (int ) ;
 int oid_to_hex (int *) ;
 scalar_t__ parse_commit (struct commit*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 scalar_t__ save_commit_buffer ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int show_commit ;
 int the_repository ;
 int traverse_commit_list (struct rev_info*,int ,int *,struct commit_list**) ;

struct commit_list *get_shallow_commits_by_rev_list(int ac, const char **av,
          int shallow_flag,
          int not_shallow_flag)
{
 struct commit_list *result = ((void*)0), *p;
 struct commit_list *not_shallow_list = ((void*)0);
 struct rev_info revs;
 int both_flags = shallow_flag | not_shallow_flag;





 clear_object_flags(both_flags);

 is_repository_shallow(the_repository);

 repo_init_revisions(the_repository, &revs, ((void*)0));
 save_commit_buffer = 0;
 setup_revisions(ac, av, &revs, ((void*)0));

 if (prepare_revision_walk(&revs))
  die("revision walk setup failed");
 traverse_commit_list(&revs, show_commit, ((void*)0), &not_shallow_list);

 if (!not_shallow_list)
  die("no commits selected for shallow requests");


 for (p = not_shallow_list; p; p = p->next)
  p->item->object.flags |= not_shallow_flag;
 for (p = not_shallow_list; p; p = p->next) {
  struct commit *c = p->item;
  struct commit_list *parent;

  if (parse_commit(c))
   die("unable to parse commit %s",
       oid_to_hex(&c->object.oid));

  for (parent = c->parents; parent; parent = parent->next)
   if (!(parent->item->object.flags & not_shallow_flag)) {
    c->object.flags |= shallow_flag;
    commit_list_insert(c, &result);
    break;
   }
 }
 free_commit_list(not_shallow_list);





 for (p = result; p; p = p->next) {
  struct object *o = &p->item->object;
  if ((o->flags & both_flags) == both_flags)
   o->flags &= ~not_shallow_flag;
 }
 return result;
}
