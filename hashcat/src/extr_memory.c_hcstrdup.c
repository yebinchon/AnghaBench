
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hcmalloc (size_t const) ;
 int memcpy (char*,char const*,size_t const) ;
 size_t strlen (char const*) ;

char *hcstrdup (const char *s)
{
  const size_t len = strlen (s);

  char *b = (char *) hcmalloc (len + 1);

  if (b == ((void*)0)) return (((void*)0));

  memcpy (b, s, len);

  b[len] = 0;

  return (b);
}
