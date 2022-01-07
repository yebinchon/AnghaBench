
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t length; char** contents; } ;
struct TYPE_4__ {size_t pathlist_walk_idx; int (* strncomp ) (char*,char const*,size_t) ;TYPE_3__ pathlist; } ;
typedef TYPE_1__ git_iterator ;


 int git_vector_sort (TYPE_3__*) ;
 size_t min (size_t,size_t) ;
 size_t strlen (char const*) ;
 int stub1 (char*,char const*,size_t) ;

__attribute__((used)) static bool iterator_pathlist_next_is(git_iterator *iter, const char *path)
{
 char *p;
 size_t path_len, p_len, cmp_len, i;
 int cmp;

 if (iter->pathlist.length == 0)
  return 1;

 git_vector_sort(&iter->pathlist);

 path_len = strlen(path);


 if (path_len && path[path_len-1] == '/')
  path_len--;

 for (i = iter->pathlist_walk_idx; i < iter->pathlist.length; i++) {
  p = iter->pathlist.contents[i];
  p_len = strlen(p);

  if (p_len && p[p_len-1] == '/')
   p_len--;

  cmp_len = min(path_len, p_len);


  cmp = iter->strncomp(p, path, cmp_len);




  if (cmp == 0) {





   if (p[cmp_len] == '\0' &&
    (path[cmp_len] == '\0' || path[cmp_len] == '/'))
    return 1;





   if (p[cmp_len] == '/' && path[cmp_len] == '/')
    return 1;
  }


  else if (cmp < 0) {
   iter->pathlist_walk_idx++;
   continue;
  }


  else if (cmp > 0) {
   break;
  }
 }

 return 0;
}
