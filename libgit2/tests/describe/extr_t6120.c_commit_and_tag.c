
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_time_t ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_index ;


 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int *,int,char const*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_reference_create (int **,int ,char const*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int repo ;

__attribute__((used)) static void commit_and_tag(
 git_time_t *time,
 const char *commit_msg,
 const char *tag_name)
{
 git_index *index;
 git_oid commit_id;
 git_reference *ref;

 cl_git_pass(git_repository_index__weakptr(&index, repo));

 cl_git_append2file("describe/file", "\n");

 cl_git_pass(git_index_add_bypath(index, "file"));
 cl_git_pass(git_index_write(index));

 *time += 10;
 cl_repo_commit_from_index(&commit_id, repo, ((void*)0), *time, commit_msg);

 if (tag_name == ((void*)0))
  return;

 cl_git_pass(git_reference_create(&ref, repo, tag_name, &commit_id, 0, ((void*)0)));
 git_reference_free(ref);
}
