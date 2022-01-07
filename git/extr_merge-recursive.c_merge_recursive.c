
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_options {int repo; int * ancestor; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int assert (int) ;
 int merge_finalize (struct merge_options*) ;
 int merge_recursive_internal (struct merge_options*,struct commit*,struct commit*,struct commit_list*,struct commit**) ;
 scalar_t__ merge_start (struct merge_options*,int ) ;
 int repo_get_commit_tree (int ,struct commit*) ;
 int strcmp (int *,char*) ;

int merge_recursive(struct merge_options *opt,
      struct commit *h1,
      struct commit *h2,
      struct commit_list *merge_bases,
      struct commit **result)
{
 int clean;

 assert(opt->ancestor == ((void*)0) ||
        !strcmp(opt->ancestor, "constructed merge base"));

 if (merge_start(opt, repo_get_commit_tree(opt->repo, h1)))
  return -1;
 clean = merge_recursive_internal(opt, h1, h2, merge_bases, result);
 merge_finalize(opt);

 return clean;
}
