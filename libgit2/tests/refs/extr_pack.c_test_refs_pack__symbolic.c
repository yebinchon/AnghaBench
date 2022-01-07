
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int git_reference ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_create (int **,int ,char*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int ,int *) ;
 int p_snprintf (char*,int,char*,int) ;
 int packall () ;

void test_refs_pack__symbolic(void)
{

 int i;
 git_oid head;
 git_reference *ref;
 char name[128];

 cl_git_pass(git_reference_name_to_id(&head, g_repo, "HEAD"));



 for (i = 0; i < 100; ++i) {
  p_snprintf(name, sizeof(name), "refs/heads/symbolic-%03d", i);
  cl_git_pass(git_reference_symbolic_create(
   &ref, g_repo, name, "refs/heads/master", 0, ((void*)0)));
  git_reference_free(ref);

  p_snprintf(name, sizeof(name), "refs/heads/direct-%03d", i);
  cl_git_pass(git_reference_create(&ref, g_repo, name, &head, 0, ((void*)0)));
  git_reference_free(ref);
 }

 packall();
}
