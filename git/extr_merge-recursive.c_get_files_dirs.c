
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct pathspec {int dummy; } ;
struct merge_options {int repo; } ;
typedef int match_all ;


 int memset (struct pathspec*,int ,int) ;
 int read_tree_recursive (int ,struct tree*,char*,int ,int ,struct pathspec*,int ,struct merge_options*) ;
 int save_files_dirs ;

__attribute__((used)) static void get_files_dirs(struct merge_options *opt, struct tree *tree)
{
 struct pathspec match_all;
 memset(&match_all, 0, sizeof(match_all));
 read_tree_recursive(opt->repo, tree, "", 0, 0,
       &match_all, save_files_dirs, opt);
}
