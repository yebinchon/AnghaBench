
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_5__ {char* fullpath; char* path; } ;
typedef TYPE_1__ git_attr_file_entry ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 scalar_t__ git_path_root (char const*) ;
 TYPE_1__* git_pool_mallocz (int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int git_attr_cache__alloc_file_entry(
 git_attr_file_entry **out,
 const char *base,
 const char *path,
 git_pool *pool)
{
 size_t baselen = 0, pathlen = strlen(path);
 size_t cachesize = sizeof(git_attr_file_entry) + pathlen + 1;
 git_attr_file_entry *ce;

 if (base != ((void*)0) && git_path_root(path) < 0) {
  baselen = strlen(base);
  cachesize += baselen;

  if (baselen && base[baselen - 1] != '/')
   cachesize++;
 }

 ce = git_pool_mallocz(pool, cachesize);
 GIT_ERROR_CHECK_ALLOC(ce);

 if (baselen) {
  memcpy(ce->fullpath, base, baselen);

  if (base[baselen - 1] != '/')
   ce->fullpath[baselen++] = '/';
 }
 memcpy(&ce->fullpath[baselen], path, pathlen);

 ce->path = &ce->fullpath[baselen];
 *out = ce;

 return 0;
}
