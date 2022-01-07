
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 char* memchr (char const*,char,size_t) ;

__attribute__((used)) static int ident_find_id(
 const char **id_start, const char **id_end, const char *start, size_t len)
{
 const char *end = start + len, *found = ((void*)0);

 while (len > 3 && (found = memchr(start, '$', len)) != ((void*)0)) {
  size_t remaining = (size_t)(end - found) - 1;
  if (remaining < 3)
   return GIT_ENOTFOUND;

  start = found + 1;
  len = remaining;

  if (start[0] == 'I' && start[1] == 'd')
   break;
 }

 if (len < 3 || !found)
  return GIT_ENOTFOUND;
 *id_start = found;

 if ((found = memchr(start + 2, '$', len - 2)) == ((void*)0))
  return GIT_ENOTFOUND;

 *id_end = found + 1;
 return 0;
}
