
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {scalar_t__ commit_count; int ** commits; } ;
typedef TYPE_1__ describe_options ;


 int do_describe_single (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void do_describe(git_repository *repo, describe_options *opts)
{
 if (opts->commit_count == 0)
  do_describe_single(repo, opts, ((void*)0));
 else
 {
  size_t i;
  for (i = 0; i < opts->commit_count; i++)
   do_describe_single(repo, opts, opts->commits[i]);
 }
}
