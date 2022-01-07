
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_repository ;
typedef int git_reference ;


 int GIT_UNUSED (int *) ;
 int cl_git_pass (int ) ;
 int git_reference__read_head (int **,int *,char const*) ;
 int git_vector_insert (int *,int *) ;

__attribute__((used)) static int read_head_ref(git_repository *repo, const char *path, void *payload)
{
 git_vector *refs = (git_vector *) payload;
 git_reference *head;

 GIT_UNUSED(repo);

 cl_git_pass(git_reference__read_head(&head, repo, path));

 git_vector_insert(refs, head);

 return 0;
}
