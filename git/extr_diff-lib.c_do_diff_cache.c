
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int pathspec; int repo; } ;
struct rev_info {struct diff_options diffopt; int prune_data; } ;
struct object_id {int dummy; } ;


 int copy_pathspec (int *,int *) ;
 scalar_t__ diff_cache (struct rev_info*,struct object_id const*,int *,int) ;
 int exit (int) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;

int do_diff_cache(const struct object_id *tree_oid, struct diff_options *opt)
{
 struct rev_info revs;

 repo_init_revisions(opt->repo, &revs, ((void*)0));
 copy_pathspec(&revs.prune_data, &opt->pathspec);
 revs.diffopt = *opt;

 if (diff_cache(&revs, tree_oid, ((void*)0), 1))
  exit(128);
 return 0;
}
