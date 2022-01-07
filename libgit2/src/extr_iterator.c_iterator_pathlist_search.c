
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int iterator_pathlist_search_t ;
typedef int git_vector_cmp ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ (* prefixcomp ) (char const*,char const*) ;TYPE_3__ pathlist; scalar_t__ strcomp; } ;
typedef TYPE_1__ git_iterator ;


 int ITERATOR_PATHLIST_FULL ;
 int ITERATOR_PATHLIST_IS_DIR ;
 int ITERATOR_PATHLIST_IS_FILE ;
 int ITERATOR_PATHLIST_IS_PARENT ;
 int ITERATOR_PATHLIST_NONE ;
 int assert (char const) ;
 int git_vector_bsearch2 (size_t*,TYPE_3__*,int ,char const*) ;
 char* git_vector_get (TYPE_3__*,size_t) ;
 int git_vector_sort (TYPE_3__*) ;
 scalar_t__ stub1 (char const*,char const*) ;

__attribute__((used)) static iterator_pathlist_search_t iterator_pathlist_search(
 git_iterator *iter, const char *path, size_t path_len)
{
 const char *p;
 size_t idx;
 int error;

 if (iter->pathlist.length == 0)
  return ITERATOR_PATHLIST_FULL;

 git_vector_sort(&iter->pathlist);

 error = git_vector_bsearch2(&idx, &iter->pathlist,
  (git_vector_cmp)iter->strcomp, path);





 if (error == 0) {
  if (path_len && path[path_len-1] == '/')
   return ITERATOR_PATHLIST_IS_DIR;

  return ITERATOR_PATHLIST_IS_FILE;
 }





 while ((p = git_vector_get(&iter->pathlist, idx)) != ((void*)0)) {
  if (iter->prefixcomp(p, path) != 0)
   break;


  assert(p[path_len]);


  if (p[path_len] == '/') {
   return (p[path_len+1] == '\0') ?
    ITERATOR_PATHLIST_IS_DIR :
    ITERATOR_PATHLIST_IS_PARENT;
  }

  if (p[path_len] > '/')
   break;

  idx++;
 }

 return ITERATOR_PATHLIST_NONE;
}
