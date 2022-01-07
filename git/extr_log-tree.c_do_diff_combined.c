
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int loginfo; int dense_combined_merges; } ;
struct commit {int dummy; } ;


 int diff_tree_combined_merge (struct commit*,int ,struct rev_info*) ;

__attribute__((used)) static int do_diff_combined(struct rev_info *opt, struct commit *commit)
{
 diff_tree_combined_merge(commit, opt->dense_combined_merges, opt);
 return !opt->loginfo;
}
