
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * tagger; } ;
typedef TYPE_1__ git_tag ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int bad_tag_id ;
 int badly_tagged_commit ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 scalar_t__ git_oid_cmp (int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_tag_free (TYPE_1__*) ;
 int git_tag_id (TYPE_1__*) ;
 int git_tag_lookup (TYPE_1__**,int *,int *) ;
 int git_tag_name (TYPE_1__*) ;
 int git_tag_target (int **,TYPE_1__*) ;

void test_object_tag_read__parse_without_tagger(void)
{

 git_repository *bad_tag_repo;
 git_tag *bad_tag;
 git_commit *commit;
 git_oid id, id_commit;


 cl_git_pass(git_repository_open(&bad_tag_repo, cl_fixture("bad_tag.git")));

 git_oid_fromstr(&id, bad_tag_id);
 git_oid_fromstr(&id_commit, badly_tagged_commit);

 cl_git_pass(git_tag_lookup(&bad_tag, bad_tag_repo, &id));
 cl_assert(bad_tag != ((void*)0));

 cl_assert_equal_s(git_tag_name(bad_tag), "e90810b");
 cl_assert(git_oid_cmp(&id, git_tag_id(bad_tag)) == 0);
 cl_assert(bad_tag->tagger == ((void*)0));

 cl_git_pass(git_tag_target((git_object **)&commit, bad_tag));
 cl_assert(commit != ((void*)0));

 cl_assert(git_oid_cmp(&id_commit, git_commit_id(commit)) == 0);


 git_tag_free(bad_tag);
 git_commit_free(commit);
 git_repository_free(bad_tag_repo);
}
