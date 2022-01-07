
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct th_data {int id; int path; } ;
typedef int name ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_refdb ;
typedef int git_oid ;


 int GIT_ELOCKED ;
 int NREFS ;
 int cl_git_thread_pass (struct th_data*,int) ;
 scalar_t__ concurrent_compress ;
 int git_error_clear () ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_reference_create (int **,int *,char*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_name_to_id (int *,int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_refdb (int **,int *) ;
 int p_snprintf (char*,int,char*,int ,int) ;

__attribute__((used)) static void *create_refs(void *arg)
{
 int i, error;
 struct th_data *data = (struct th_data *) arg;
 git_oid head;
 char name[128];
 git_reference *ref[NREFS];
 git_repository *repo;

 cl_git_thread_pass(data, git_repository_open(&repo, data->path));

 do {
  error = git_reference_name_to_id(&head, repo, "HEAD");
 } while (error == GIT_ELOCKED);
 cl_git_thread_pass(data, error);

 for (i = 0; i < NREFS; ++i) {
  p_snprintf(name, sizeof(name), "refs/heads/thread-%03d-%02d", data->id, i);
  do {
   error = git_reference_create(&ref[i], repo, name, &head, 0, ((void*)0));
  } while (error == GIT_ELOCKED);
  cl_git_thread_pass(data, error);

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

 for (i = 0; i < NREFS; ++i)
  git_reference_free(ref[i]);

 git_repository_free(repo);

 git_error_clear();
 return arg;
}
