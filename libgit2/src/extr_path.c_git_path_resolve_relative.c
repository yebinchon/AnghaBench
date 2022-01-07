
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_CHECK_ALLOC_BUF (TYPE_1__*) ;
 int GIT_ERROR_INVALID ;
 scalar_t__ git__isalpha (char) ;
 int git_error_set (int ,char*) ;
 int git_path_root (char*) ;
 int memmove (char*,char*,size_t) ;

int git_path_resolve_relative(git_buf *path, size_t ceiling)
{
 char *base, *to, *from, *next;
 size_t len;

 GIT_ERROR_CHECK_ALLOC_BUF(path);

 if (ceiling > path->size)
  ceiling = path->size;


 if (ceiling == 0)
  ceiling = git_path_root(path->ptr) + 1;


 if (ceiling == 0) {
  for (next = path->ptr; *next && git__isalpha(*next); ++next);
  if (next[0] == ':' && next[1] == '/' && next[2] == '/')
   ceiling = (next + 3) - path->ptr;
 }

 base = to = from = path->ptr + ceiling;

 while (*from) {
  for (next = from; *next && *next != '/'; ++next);

  len = next - from;

  if (len == 1 && from[0] == '.')
                                      ;

  else if (len == 2 && from[0] == '.' && from[1] == '.') {

   if (to == base && ceiling != 0) {
    git_error_set(GIT_ERROR_INVALID,
     "cannot strip root component off url");
    return -1;
   }



   if (to == base) {
    if (*next == '/')
     len++;

    if (to != from)
     memmove(to, from, len);

    to += len;


    base = to;
   } else {

    while (to > base && to[-1] == '/') to--;
    while (to > base && to[-1] != '/') to--;
   }
  } else {
   if (*next == '/' && *from != '/')
    len++;

   if (to != from)
    memmove(to, from, len);

   to += len;
  }

  from += len;

  while (*from == '/') from++;
 }

 *to = '\0';

 path->size = to - path->ptr;

 return 0;
}
