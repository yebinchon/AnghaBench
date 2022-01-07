
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef size_t git_off_t ;
struct TYPE_3__ {int id; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_filter_source ;
typedef int git_blob ;


 int S_ISREG (int ) ;
 int git__is_sizet (size_t) ;
 int git_blob_free (int *) ;
 scalar_t__ git_blob_lookup (int **,int *,int *) ;
 void* git_blob_rawcontent (int *) ;
 size_t git_blob_rawsize (int *) ;
 int git_error_clear () ;
 char* git_filter_source_path (int const*) ;
 int * git_filter_source_repo (int const*) ;
 TYPE_1__* git_index_get_bypath (int *,char const*,int) ;
 scalar_t__ git_repository_index__weakptr (int **,int *) ;
 int * memchr (void const*,char,size_t) ;

__attribute__((used)) static int has_cr_in_index(const git_filter_source *src)
{
 git_repository *repo = git_filter_source_repo(src);
 const char *path = git_filter_source_path(src);
 git_index *index;
 const git_index_entry *entry;
 git_blob *blob;
 const void *blobcontent;
 git_off_t blobsize;
 bool found_cr;

 if (!path)
  return 0;

 if (git_repository_index__weakptr(&index, repo) < 0) {
  git_error_clear();
  return 0;
 }

 if (!(entry = git_index_get_bypath(index, path, 0)) &&
  !(entry = git_index_get_bypath(index, path, 1)))
  return 0;

 if (!S_ISREG(entry->mode))
  return 1;

 if (git_blob_lookup(&blob, repo, &entry->id) < 0)
  return 0;

 blobcontent = git_blob_rawcontent(blob);
 blobsize = git_blob_rawsize(blob);
 if (!git__is_sizet(blobsize))
  blobsize = (size_t)-1;

 found_cr = (blobcontent != ((void*)0) &&
  blobsize > 0 &&
  memchr(blobcontent, '\r', (size_t)blobsize) != ((void*)0));

 git_blob_free(blob);
 return found_cr;
}
