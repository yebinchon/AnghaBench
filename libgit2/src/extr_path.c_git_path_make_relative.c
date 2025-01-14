
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_CHECK_ALLOC_MULTIPLY (size_t*,size_t,int) ;
 int GIT_ERROR_INVALID ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_set (TYPE_1__*,char const*,size_t) ;
 scalar_t__ git_buf_try_grow (TYPE_1__*,size_t,int) ;
 int git_error_set (int ,char*,char const*,char const*) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;

int git_path_make_relative(git_buf *path, const char *parent)
{
 const char *p, *q, *p_dirsep, *q_dirsep;
 size_t plen = path->size, newlen, alloclen, depth = 1, i, offset;

 for (p_dirsep = p = path->ptr, q_dirsep = q = parent; *p && *q; p++, q++) {
  if (*p == '/' && *q == '/') {
   p_dirsep = p;
   q_dirsep = q;
  }
  else if (*p != *q)
   break;
 }


 if ((p_dirsep == path->ptr || q_dirsep == parent) &&
  (*p_dirsep != '/' || *q_dirsep != '/')) {
  git_error_set(GIT_ERROR_INVALID,
   "%s is not a parent of %s", parent, path->ptr);
  return GIT_ENOTFOUND;
 }

 if (*p == '/' && !*q)
  p++;
 else if (!*p && *q == '/')
  q++;
 else if (!*p && !*q)
  return git_buf_clear(path), 0;
 else {
  p = p_dirsep + 1;
  q = q_dirsep + 1;
 }

 plen -= (p - path->ptr);

 if (!*q)
  return git_buf_set(path, p, plen);

 for (; (q = strchr(q, '/')) && *(q + 1); q++)
  depth++;

 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&newlen, depth, 3);
 GIT_ERROR_CHECK_ALLOC_ADD(&newlen, newlen, plen);

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, newlen, 1);


 offset = p - path->ptr;
 if (git_buf_try_grow(path, alloclen, 1) < 0)
  return -1;
 p = path->ptr + offset;

 memmove(path->ptr + (depth * 3), p, plen + 1);

 for (i = 0; i < depth; i++)
  memcpy(path->ptr + (i * 3), "../", 3);

 path->size = newlen;
 return 0;
}
