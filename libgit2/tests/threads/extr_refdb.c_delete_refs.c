
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct th_data {int id; int path; } ;
typedef int name ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_refdb ;


 int GIT_ELOCKED ;
 int GIT_ENOTFOUND ;
 int NREFS ;
 int cl_git_thread_pass (struct th_data*,int) ;
 scalar_t__ concurrent_compress ;
 int git_error_clear () ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_refdb (int **,int *) ;
 int p_snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void *delete_refs(void *arg)
{
 int i, error;
 struct th_data *data = (struct th_data *) arg;
 git_reference *ref;
 char name[128];
 git_repository *repo;

 cl_git_thread_pass(data, git_repository_open(&repo, data->path));

 for (i = 0; i < NREFS; ++i) {
  p_snprintf(
   name, sizeof(name), "refs/heads/thread-%03d-%02d", (data->id) & ~0x3, i);

  if (!git_reference_lookup(&ref, repo, name)) {
   do {
    error = git_reference_delete(ref);
   } while (error == GIT_ELOCKED);

   if (error == GIT_ENOTFOUND)
    error = 0;

   cl_git_thread_pass(data, error);
   git_reference_free(ref);
  }

  if (concurrent_compress && i == NREFS/2) {
   git_refdb *refdb;
   cl_git_thread_pass(data, git_repository_refdb(&refdb, repo));
   do {
    error = git_refdb_compress(refdb);
   } while (error == GIT_ELOCKED);
   cl_git_thread_pass(data, error);
   git_refdb_free(refdb);
  }
 }

 git_repository_free(repo);
 git_error_clear();
 return arg;
}
