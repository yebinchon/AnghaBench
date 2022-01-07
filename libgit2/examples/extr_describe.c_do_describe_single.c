
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_object ;
typedef int git_describe_result ;
struct TYPE_5__ {char* ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_6__ {int format_options; int describe_options; } ;
typedef TYPE_2__ describe_options ;


 int check_lg2 (int ,char*,char const*) ;
 int git_describe_commit (int **,int *,int *) ;
 int git_describe_format (TYPE_1__*,int *,int *) ;
 int git_describe_workdir (int **,int *,int *) ;
 int git_revparse_single (int **,int *,char const*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void do_describe_single(git_repository *repo, describe_options *opts, const char *rev)
{
 git_object *commit;
 git_describe_result *describe_result;
 git_buf buf = { 0 };

 if (rev) {
  check_lg2(git_revparse_single(&commit, repo, rev),
   "Failed to lookup rev", rev);

  check_lg2(git_describe_commit(&describe_result, commit, &opts->describe_options),
   "Failed to describe rev", rev);
 }
 else
  check_lg2(git_describe_workdir(&describe_result, repo, &opts->describe_options),
   "Failed to describe workdir", ((void*)0));

 check_lg2(git_describe_format(&buf, describe_result, &opts->format_options),
   "Failed to format describe rev", rev);

 printf("%s\n", buf.ptr);
}
