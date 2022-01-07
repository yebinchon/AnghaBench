
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * message; } ;
typedef TYPE_1__ git_tag ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


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
 int short_tag_id ;
 int short_tagged_commit ;

void test_object_tag_read__parse_without_message(void)
{

 git_repository *short_tag_repo;
 git_tag *short_tag;
 git_commit *commit;
 git_oid id, id_commit;


 cl_git_pass(git_repository_open(&short_tag_repo, cl_fixture("short_tag.git")));

 git_oid_fromstr(&id, short_tag_id);
 git_oid_fromstr(&id_commit, short_tagged_commit);

 cl_git_pass(git_tag_lookup(&short_tag, short_tag_repo, &id));
 cl_assert(short_tag != ((void*)0));

 cl_assert_equal_s(git_tag_name(short_tag), "no_description");
 cl_assert(git_oid_cmp(&id, git_tag_id(short_tag)) == 0);
 cl_assert(short_tag->message == ((void*)0));

 cl_git_pass(git_tag_target((git_object **)&commit, short_tag));
 cl_assert(commit != ((void*)0));

 cl_assert(git_oid_cmp(&id_commit, git_commit_id(commit)) == 0);

 git_tag_free(short_tag);
 git_commit_free(commit);
 git_repository_free(short_tag_repo);
}
