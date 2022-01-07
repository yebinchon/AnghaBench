
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 size_t EV_SIZE_MAX ;
 char* _strdup (char const*) ;
 int errno ;
 char* memcpy (void*,char const*,size_t) ;
 void* mm_malloc_fn_ (size_t) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;

char *
event_mm_strdup_(const char *str)
{
 if (!str) {
  errno = EINVAL;
  return ((void*)0);
 }

 if (mm_malloc_fn_) {
  size_t ln = strlen(str);
  void *p = ((void*)0);
  if (ln == EV_SIZE_MAX)
   goto error;
  p = mm_malloc_fn_(ln+1);
  if (p)
   return memcpy(p, str, ln+1);
 } else



  return strdup(str);


error:
 errno = ENOMEM;
 return ((void*)0);
}
