
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_attr_session ;
typedef int git_attr_file_source ;
typedef int git_attr_file_parser ;
typedef int git_attr_file_entry ;
typedef int git_attr_file ;
typedef int git_attr_cache ;


 int GIT_ENOTFOUND ;
 int attr_cache_lookup (int **,int **,int *,int *,int ,char const*,char const*) ;
 int attr_cache_remove (int *,int *) ;
 int attr_cache_upsert (int *,int *) ;
 int git_attr_file__free (int *) ;
 int git_attr_file__load (int **,int *,int *,int *,int ,int ,int) ;
 int git_attr_file__out_of_date (int *,int *,int *) ;
 int git_error_clear () ;
 int * git_repository_attr_cache (int *) ;

int git_attr_cache__get(
 git_attr_file **out,
 git_repository *repo,
 git_attr_session *attr_session,
 git_attr_file_source source,
 const char *base,
 const char *filename,
 git_attr_file_parser parser,
 bool allow_macros)
{
 int error = 0;
 git_attr_cache *cache = git_repository_attr_cache(repo);
 git_attr_file_entry *entry = ((void*)0);
 git_attr_file *file = ((void*)0), *updated = ((void*)0);

 if ((error = attr_cache_lookup(
   &file, &entry, repo, attr_session, source, base, filename)) < 0)
  return error;


 if (!file || (error = git_attr_file__out_of_date(repo, attr_session, file)) > 0)
  error = git_attr_file__load(&updated, repo, attr_session, entry, source, parser, allow_macros);


 if (updated) {
  if ((error = attr_cache_upsert(cache, updated)) < 0)
   git_attr_file__free(updated);
  else {
   git_attr_file__free(file);
   file = updated;
  }
 }


 if (error < 0) {

  if (file) {
   attr_cache_remove(cache, file);
   git_attr_file__free(file);
   file = ((void*)0);
  }

  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   error = 0;
  }
 }

 *out = file;
 return error;
}
