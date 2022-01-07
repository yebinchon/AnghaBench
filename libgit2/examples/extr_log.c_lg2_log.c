
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct log_state {int walker; int * repo; int revisions; } ;
struct log_options {int min_parents; int max_parents; int limit; scalar_t__ show_diff; int skip; int grep; int committer; int author; } ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_pathspec ;
typedef int git_oid ;
struct TYPE_7__ {char** strings; int count; } ;
struct TYPE_6__ {TYPE_3__ pathspec; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_DIFF_FORMAT_PATCH ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_PATHSPEC_NO_MATCH_ERROR ;
 int add_revision (struct log_state*,int *) ;
 int check_lg2 (int ,char*,int *) ;
 int diff_output ;
 int git_commit_author (int *) ;
 int git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 int git_commit_owner (int *) ;
 int git_commit_parent (int **,int *,int ) ;
 scalar_t__ git_commit_parentcount (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_print (int *,int ,int ,int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_1__*) ;
 int git_pathspec_free (int *) ;
 scalar_t__ git_pathspec_match_tree (int *,int *,int ,int *) ;
 int git_pathspec_new (int **,TYPE_3__*) ;
 int git_revwalk_free (int ) ;
 int git_revwalk_next (int *,int ) ;
 int git_tree_free (int *) ;
 int log_message_matches (int *,int ) ;
 scalar_t__ match_with_parent (int *,int,TYPE_1__*) ;
 int parse_options (struct log_state*,struct log_options*,int,char**) ;
 int print_commit (int *,struct log_options*) ;
 int signature_matches (int ,int ) ;

int lg2_log(git_repository *repo, int argc, char *argv[])
{
 int i, count = 0, printed = 0, parents, last_arg;
 struct log_state s;
 struct log_options opt;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_oid oid;
 git_commit *commit = ((void*)0);
 git_pathspec *ps = ((void*)0);


 last_arg = parse_options(&s, &opt, argc, argv);
 s.repo = repo;

 diffopts.pathspec.strings = &argv[last_arg];
 diffopts.pathspec.count = argc - last_arg;
 if (diffopts.pathspec.count > 0)
  check_lg2(git_pathspec_new(&ps, &diffopts.pathspec),
   "Building pathspec", ((void*)0));

 if (!s.revisions)
  add_revision(&s, ((void*)0));



 printed = count = 0;

 for (; !git_revwalk_next(&oid, s.walker); git_commit_free(commit)) {
  check_lg2(git_commit_lookup(&commit, s.repo, &oid),
   "Failed to look up commit", ((void*)0));

  parents = (int)git_commit_parentcount(commit);
  if (parents < opt.min_parents)
   continue;
  if (opt.max_parents > 0 && parents > opt.max_parents)
   continue;

  if (diffopts.pathspec.count > 0) {
   int unmatched = parents;

   if (parents == 0) {
    git_tree *tree;
    check_lg2(git_commit_tree(&tree, commit), "Get tree", ((void*)0));
    if (git_pathspec_match_tree(
      ((void*)0), tree, GIT_PATHSPEC_NO_MATCH_ERROR, ps) != 0)
     unmatched = 1;
    git_tree_free(tree);
   } else if (parents == 1) {
    unmatched = match_with_parent(commit, 0, &diffopts) ? 0 : 1;
   } else {
    for (i = 0; i < parents; ++i) {
     if (match_with_parent(commit, i, &diffopts))
      unmatched--;
    }
   }

   if (unmatched > 0)
    continue;
  }

  if (!signature_matches(git_commit_author(commit), opt.author))
   continue;

  if (!signature_matches(git_commit_committer(commit), opt.committer))
   continue;

  if (!log_message_matches(commit, opt.grep))
   continue;

  if (count++ < opt.skip)
   continue;
  if (opt.limit != -1 && printed++ >= opt.limit) {
   git_commit_free(commit);
   break;
  }

  print_commit(commit, &opt);

  if (opt.show_diff) {
   git_tree *a = ((void*)0), *b = ((void*)0);
   git_diff *diff = ((void*)0);

   if (parents > 1)
    continue;
   check_lg2(git_commit_tree(&b, commit), "Get tree", ((void*)0));
   if (parents == 1) {
    git_commit *parent;
    check_lg2(git_commit_parent(&parent, commit, 0), "Get parent", ((void*)0));
    check_lg2(git_commit_tree(&a, parent), "Tree for parent", ((void*)0));
    git_commit_free(parent);
   }

   check_lg2(git_diff_tree_to_tree(
    &diff, git_commit_owner(commit), a, b, &diffopts),
    "Diff commit with parent", ((void*)0));
   check_lg2(
                git_diff_print(diff, GIT_DIFF_FORMAT_PATCH, diff_output, ((void*)0)),
    "Displaying diff", ((void*)0));

   git_diff_free(diff);
   git_tree_free(a);
   git_tree_free(b);
  }
 }

 git_pathspec_free(ps);
 git_revwalk_free(s.walker);

 return 0;
}
