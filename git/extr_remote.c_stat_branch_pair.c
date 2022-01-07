
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;
struct argv_array {int argv; int argc; } ;
typedef enum ahead_behind_flags { ____Placeholder_ahead_behind_flags } ahead_behind_flags ;


 int AHEAD_BEHIND_FULL ;
 int AHEAD_BEHIND_QUICK ;
 int ALL_REV_FLAGS ;
 struct argv_array ARGV_ARRAY_INIT ;
 int BUG (char*,int) ;
 int SYMMETRIC_LEFT ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char*,int ,int ) ;
 int clear_commit_marks (struct commit*,int ) ;
 int die (int ) ;
 struct commit* get_revision (struct rev_info*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int oid_to_hex (int *) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 scalar_t__ read_ref (char const*,struct object_id*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int setup_revisions (int ,int ,struct rev_info*,int *) ;
 int the_repository ;

__attribute__((used)) static int stat_branch_pair(const char *branch_name, const char *base,
        int *num_ours, int *num_theirs,
        enum ahead_behind_flags abf)
{
 struct object_id oid;
 struct commit *ours, *theirs;
 struct rev_info revs;
 struct argv_array argv = ARGV_ARRAY_INIT;


 if (read_ref(base, &oid))
  return -1;
 theirs = lookup_commit_reference(the_repository, &oid);
 if (!theirs)
  return -1;

 if (read_ref(branch_name, &oid))
  return -1;
 ours = lookup_commit_reference(the_repository, &oid);
 if (!ours)
  return -1;

 *num_theirs = *num_ours = 0;


 if (theirs == ours)
  return 0;
 if (abf == AHEAD_BEHIND_QUICK)
  return 1;
 if (abf != AHEAD_BEHIND_FULL)
  BUG("stat_branch_pair: invalid abf '%d'", abf);


 argv_array_push(&argv, "");
 argv_array_push(&argv, "--left-right");
 argv_array_pushf(&argv, "%s...%s",
    oid_to_hex(&ours->object.oid),
    oid_to_hex(&theirs->object.oid));
 argv_array_push(&argv, "--");

 repo_init_revisions(the_repository, &revs, ((void*)0));
 setup_revisions(argv.argc, argv.argv, &revs, ((void*)0));
 if (prepare_revision_walk(&revs))
  die(_("revision walk setup failed"));


 while (1) {
  struct commit *c = get_revision(&revs);
  if (!c)
   break;
  if (c->object.flags & SYMMETRIC_LEFT)
   (*num_ours)++;
  else
   (*num_theirs)++;
 }


 clear_commit_marks(ours, ALL_REV_FLAGS);
 clear_commit_marks(theirs, ALL_REV_FLAGS);

 argv_array_clear(&argv);
 return 1;
}
