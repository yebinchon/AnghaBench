
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int max_age; int track_linear; int ignore_missing_links; int commits; scalar_t__ topo_walk_info; scalar_t__ reflog_info; int limited; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 int ADDED ;
 int SEEN ;
 int SHOWN ;


 int comparison_date (struct rev_info*,struct commit*) ;
 int die (char*,int ) ;
 int expand_topo_walk (struct rev_info*,struct commit*) ;
 struct commit* next_reflog_entry (scalar_t__) ;
 struct commit* next_topo_commit (struct rev_info*) ;
 int oid_to_hex (int *) ;
 struct commit* pop_commit (int *) ;
 scalar_t__ process_parents (struct rev_info*,struct commit*,int *,int *) ;
 int simplify_commit (struct rev_info*,struct commit*) ;
 int track_linear (struct rev_info*,struct commit*) ;
 int try_to_simplify_commit (struct rev_info*,struct commit*) ;

__attribute__((used)) static struct commit *get_revision_1(struct rev_info *revs)
{
 while (1) {
  struct commit *commit;

  if (revs->reflog_info)
   commit = next_reflog_entry(revs->reflog_info);
  else if (revs->topo_walk_info)
   commit = next_topo_commit(revs);
  else
   commit = pop_commit(&revs->commits);

  if (!commit)
   return ((void*)0);

  if (revs->reflog_info)
   commit->object.flags &= ~(ADDED | SEEN | SHOWN);






  if (!revs->limited) {
   if (revs->max_age != -1 &&
       comparison_date(revs, commit) < revs->max_age)
    continue;

   if (revs->reflog_info)
    try_to_simplify_commit(revs, commit);
   else if (revs->topo_walk_info)
    expand_topo_walk(revs, commit);
   else if (process_parents(revs, commit, &revs->commits, ((void*)0)) < 0) {
    if (!revs->ignore_missing_links)
     die("Failed to traverse parents of commit %s",
      oid_to_hex(&commit->object.oid));
   }
  }

  switch (simplify_commit(revs, commit)) {
  case 128:
   continue;
  case 129:
   die("Failed to simplify parents of commit %s",
       oid_to_hex(&commit->object.oid));
  default:
   if (revs->track_linear)
    track_linear(revs, commit);
   return commit;
  }
 }
}
