
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t p_strnlen (char const*,size_t) ;
 char* stdalloc__malloc (size_t,char const*,int) ;

__attribute__((used)) static char *stdalloc__strndup(const char *str, size_t n, const char *file, int line)
{
 size_t length = 0, alloclength;
 char *ptr;

 length = p_strnlen(str, n);

 if (GIT_ADD_SIZET_OVERFLOW(&alloclength, length, 1) ||
  !(ptr = stdalloc__malloc(alloclength, file, line)))
  return ((void*)0);

 if (length)
  memcpy(ptr, str, length);

 ptr[length] = '\0';

 return ptr;
}
