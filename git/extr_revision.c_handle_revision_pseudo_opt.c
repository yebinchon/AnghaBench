
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int single_worktree; int bisect; void* no_walk; int ref_excludes; int repo; } ;
struct ref_store {int dummy; } ;
struct all_refs_cb {int dummy; } ;


 int BOTTOM ;
 int BUG (char*) ;
 void* REVISION_WALK_NO_WALK_SORTED ;
 void* REVISION_WALK_NO_WALK_UNSORTED ;
 int UNINTERESTING ;
 int add_alternate_refs_to_pending (struct rev_info*,int) ;
 int add_index_objects_to_pending (struct rev_info*,int) ;
 int add_ref_exclusion (int *,char const*) ;
 int add_reflogs_to_pending (struct rev_info*,int) ;
 int clear_ref_exclusion (int *) ;
 int error (char*) ;
 int for_each_bad_bisect_ref ;
 int for_each_glob_ref (int ,char const*,struct all_refs_cb*) ;
 int for_each_glob_ref_in (int ,char const*,char*,struct all_refs_cb*) ;
 int for_each_good_bisect_ref ;
 struct ref_store* get_main_ref_store (int ) ;
 struct ref_store* get_submodule_ref_store (char const*) ;
 int handle_one_ref ;
 int handle_refs (struct ref_store*,struct rev_info*,int,int ) ;
 int init_all_refs_cb (struct all_refs_cb*,struct rev_info*,int) ;
 int other_head_refs (int ,struct all_refs_cb*) ;
 int parse_long_opt (char*,char const**,char const**) ;
 int read_bisect_terms (int *,int *) ;
 int refs_for_each_branch_ref ;
 int refs_for_each_ref ;
 int refs_for_each_remote_ref ;
 int refs_for_each_tag_ref ;
 int refs_head_ref ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int term_bad ;
 int term_good ;

__attribute__((used)) static int handle_revision_pseudo_opt(const char *submodule,
    struct rev_info *revs,
    int argc, const char **argv, int *flags)
{
 const char *arg = argv[0];
 const char *optarg;
 struct ref_store *refs;
 int argcount;

 if (submodule) {






  if (!revs->single_worktree)
   BUG("--single-worktree cannot be used together with submodule");
  refs = get_submodule_ref_store(submodule);
 } else
  refs = get_main_ref_store(revs->repo);
 if (!strcmp(arg, "--all")) {
  handle_refs(refs, revs, *flags, refs_for_each_ref);
  handle_refs(refs, revs, *flags, refs_head_ref);
  if (!revs->single_worktree) {
   struct all_refs_cb cb;

   init_all_refs_cb(&cb, revs, *flags);
   other_head_refs(handle_one_ref, &cb);
  }
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (!strcmp(arg, "--branches")) {
  handle_refs(refs, revs, *flags, refs_for_each_branch_ref);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (!strcmp(arg, "--bisect")) {
  read_bisect_terms(&term_bad, &term_good);
  handle_refs(refs, revs, *flags, for_each_bad_bisect_ref);
  handle_refs(refs, revs, *flags ^ (UNINTERESTING | BOTTOM),
       for_each_good_bisect_ref);
  revs->bisect = 1;
 } else if (!strcmp(arg, "--tags")) {
  handle_refs(refs, revs, *flags, refs_for_each_tag_ref);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (!strcmp(arg, "--remotes")) {
  handle_refs(refs, revs, *flags, refs_for_each_remote_ref);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if ((argcount = parse_long_opt("glob", argv, &optarg))) {
  struct all_refs_cb cb;
  init_all_refs_cb(&cb, revs, *flags);
  for_each_glob_ref(handle_one_ref, optarg, &cb);
  clear_ref_exclusion(&revs->ref_excludes);
  return argcount;
 } else if ((argcount = parse_long_opt("exclude", argv, &optarg))) {
  add_ref_exclusion(&revs->ref_excludes, optarg);
  return argcount;
 } else if (skip_prefix(arg, "--branches=", &optarg)) {
  struct all_refs_cb cb;
  init_all_refs_cb(&cb, revs, *flags);
  for_each_glob_ref_in(handle_one_ref, optarg, "refs/heads/", &cb);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (skip_prefix(arg, "--tags=", &optarg)) {
  struct all_refs_cb cb;
  init_all_refs_cb(&cb, revs, *flags);
  for_each_glob_ref_in(handle_one_ref, optarg, "refs/tags/", &cb);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (skip_prefix(arg, "--remotes=", &optarg)) {
  struct all_refs_cb cb;
  init_all_refs_cb(&cb, revs, *flags);
  for_each_glob_ref_in(handle_one_ref, optarg, "refs/remotes/", &cb);
  clear_ref_exclusion(&revs->ref_excludes);
 } else if (!strcmp(arg, "--reflog")) {
  add_reflogs_to_pending(revs, *flags);
 } else if (!strcmp(arg, "--indexed-objects")) {
  add_index_objects_to_pending(revs, *flags);
 } else if (!strcmp(arg, "--alternate-refs")) {
  add_alternate_refs_to_pending(revs, *flags);
 } else if (!strcmp(arg, "--not")) {
  *flags ^= UNINTERESTING | BOTTOM;
 } else if (!strcmp(arg, "--no-walk")) {
  revs->no_walk = REVISION_WALK_NO_WALK_SORTED;
 } else if (skip_prefix(arg, "--no-walk=", &optarg)) {




  if (!strcmp(optarg, "sorted"))
   revs->no_walk = REVISION_WALK_NO_WALK_SORTED;
  else if (!strcmp(optarg, "unsorted"))
   revs->no_walk = REVISION_WALK_NO_WALK_UNSORTED;
  else
   return error("invalid argument to --no-walk");
 } else if (!strcmp(arg, "--do-walk")) {
  revs->no_walk = 0;
 } else if (!strcmp(arg, "--single-worktree")) {
  revs->single_worktree = 1;
 } else {
  return 0;
 }

 return 1;
}
