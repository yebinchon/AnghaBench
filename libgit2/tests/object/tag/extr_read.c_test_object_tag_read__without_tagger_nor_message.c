
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * tagger; int * message; } ;
typedef TYPE_1__ git_tag ;
typedef int git_repository ;
typedef int git_oid ;


 scalar_t__ GIT_OBJECT_COMMIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_tag_free (TYPE_1__*) ;
 int git_tag_lookup (TYPE_1__**,int *,int *) ;
 int git_tag_name (TYPE_1__*) ;
 scalar_t__ git_tag_target_type (TYPE_1__*) ;
 int taggerless ;

void test_object_tag_read__without_tagger_nor_message(void)
{
 git_tag *tag;
 git_oid id;
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));

 cl_git_pass(git_oid_fromstr(&id, taggerless));

 cl_git_pass(git_tag_lookup(&tag, repo, &id));

 cl_assert_equal_s(git_tag_name(tag), "taggerless");
 cl_assert(git_tag_target_type(tag) == GIT_OBJECT_COMMIT);

 cl_assert(tag->message == ((void*)0));
 cl_assert(tag->tagger == ((void*)0));

 git_tag_free(tag);
 git_repository_free(repo);
}
