
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_time_t ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_7__ {char* pattern; int describe_strategy; } ;
typedef TYPE_1__ git_describe_options ;
struct TYPE_8__ {int always_use_long_format; } ;
typedef TYPE_2__ git_describe_format_options ;


 TYPE_2__ GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;
 int GIT_DESCRIBE_TAGS ;
 int assert_describe (char*,char*,int ,TYPE_1__*,TYPE_2__*) ;
 int cl_git_pass (int ) ;
 int commit_and_tag (int*,char*,char*) ;
 int git_object_free (int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,int,int ) ;
 int git_tag_create (int *,int ,char*,int *,int *,char*,int ) ;
 int repo ;

void test_describe_t6120__pattern(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;
 git_oid tag_id;
 git_object *head;
 git_signature *tagger;
 git_time_t time;


 cl_git_pass(git_revparse_single(&head, repo, "HEAD"));

 time = 1380553019;
 cl_git_pass(git_signature_new(&tagger, "tagger", "tagger@libgit2.org", time, 0));
 cl_git_pass(git_tag_create(&tag_id, repo, "test-annotated", head, tagger, "test-annotated", 0));
 git_signature_free(tagger);
 git_object_free(head);

 commit_and_tag(&time, "one more", "refs/tags/test1-lightweight");
 commit_and_tag(&time, "yet another", "refs/tags/test2-lightweight");
 commit_and_tag(&time, "even more", ((void*)0));



 opts.pattern = "test-*";
 assert_describe("test-annotated-*", "HEAD", repo, &opts, &fmt_opts);

 opts.describe_strategy = GIT_DESCRIBE_TAGS;
 opts.pattern = "test1-*";
 assert_describe("test1-lightweight-*", "HEAD", repo, &opts, &fmt_opts);

 opts.pattern = "test2-*";
 assert_describe("test2-lightweight-*", "HEAD", repo, &opts, &fmt_opts);

 fmt_opts.always_use_long_format = 1;
 assert_describe("test2-lightweight-*", "HEAD^", repo, &opts, &fmt_opts);
}
