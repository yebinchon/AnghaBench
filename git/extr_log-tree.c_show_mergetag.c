
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct commit {int dummy; } ;


 int for_each_mergetag (int ,struct commit*,struct rev_info*) ;
 int show_one_mergetag ;

__attribute__((used)) static int show_mergetag(struct rev_info *opt, struct commit *commit)
{
 return for_each_mergetag(show_one_mergetag, commit, opt);
}
