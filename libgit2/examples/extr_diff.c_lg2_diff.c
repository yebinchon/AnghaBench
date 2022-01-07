
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct opts {int member_2; int member_3; char* member_9; scalar_t__ no_index; char* treeish1; char* treeish2; scalar_t__ cache; int output; scalar_t__ color; int format; TYPE_1__ findopts; int diffopts; int * member_8; int * member_7; int member_6; int member_5; int member_4; int member_1; int member_0; } ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_diff ;


 scalar_t__ CACHE_NONE ;
 scalar_t__ CACHE_NORMAL ;
 int GIT_DIFF_FIND_ALL ;
 int GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 int GIT_DIFF_OPTIONS_INIT ;
 int OUTPUT_DIFF ;
 int check_lg2 (int ,char*,int *) ;
 int color_printer ;
 int * colors ;
 int compute_diff_no_index (int **,struct opts*) ;
 int diff_print_stats (int *,struct opts*) ;
 int fputs (int ,int ) ;
 int git_diff_find_similar (int *,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 int git_diff_print (int *,int ,int ,scalar_t__*) ;
 int git_diff_tree_to_index (int **,int *,int *,int *,int *) ;
 int git_diff_tree_to_tree (int **,int *,int *,int *,int *) ;
 int git_diff_tree_to_workdir (int **,int *,int *,int *) ;
 int git_diff_tree_to_workdir_with_index (int **,int *,int *,int *) ;
 int git_tree_free (int *) ;
 int parse_opts (struct opts*,int,char**) ;
 int stdout ;
 int treeish_to_tree (int **,int *,char*) ;

int lg2_diff(git_repository *repo, int argc, char *argv[])
{
 git_tree *t1 = ((void*)0), *t2 = ((void*)0);
 git_diff *diff;

 struct opts o = {
  GIT_DIFF_OPTIONS_INIT, GIT_DIFF_FIND_OPTIONS_INIT,
  -1, -1, 0, 0, GIT_DIFF_FORMAT_PATCH, ((void*)0), ((void*)0), "."
 };

 parse_opts(&o, argc, argv);
 if (o.no_index >= 0) {
  compute_diff_no_index(&diff, &o);
 } else {
  if (o.treeish1)
   treeish_to_tree(&t1, repo, o.treeish1);
  if (o.treeish2)
   treeish_to_tree(&t2, repo, o.treeish2);

  if (t1 && t2)
   check_lg2(
    git_diff_tree_to_tree(&diff, repo, t1, t2, &o.diffopts),
    "diff trees", ((void*)0));
  else if (o.cache != CACHE_NORMAL) {
   if (!t1)
    treeish_to_tree(&t1, repo, "HEAD");

   if (o.cache == CACHE_NONE)
    check_lg2(
     git_diff_tree_to_workdir(&diff, repo, t1, &o.diffopts),
     "diff tree to working directory", ((void*)0));
   else
    check_lg2(
     git_diff_tree_to_index(&diff, repo, t1, ((void*)0), &o.diffopts),
     "diff tree to index", ((void*)0));
  }
  else if (t1)
   check_lg2(
    git_diff_tree_to_workdir_with_index(&diff, repo, t1, &o.diffopts),
    "diff tree to working directory", ((void*)0));
  else
   check_lg2(
    git_diff_index_to_workdir(&diff, repo, ((void*)0), &o.diffopts),
    "diff index to working directory", ((void*)0));



  if ((o.findopts.flags & GIT_DIFF_FIND_ALL) != 0)
   check_lg2(
    git_diff_find_similar(diff, &o.findopts),
    "finding renames and copies", ((void*)0));
 }



 if (!o.output)
  o.output = OUTPUT_DIFF;

 if (o.output != OUTPUT_DIFF)
  diff_print_stats(diff, &o);

 if ((o.output & OUTPUT_DIFF) != 0) {
  if (o.color >= 0)
   fputs(colors[0], stdout);

  check_lg2(
   git_diff_print(diff, o.format, color_printer, &o.color),
   "displaying diff", ((void*)0));

  if (o.color >= 0)
   fputs(colors[0], stdout);
 }


 git_diff_free(diff);
 git_tree_free(t1);
 git_tree_free(t2);

 return 0;
}
