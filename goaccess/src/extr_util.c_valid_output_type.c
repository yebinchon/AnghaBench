
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

int
valid_output_type (const char *filename)
{
  const char *ext = ((void*)0);
  size_t sl;

  if ((ext = strrchr (filename, '.')) == ((void*)0))
    return -1;

  ext++;

  sl = strlen (ext);
  if (sl < 3 || sl > 4)
    return 0;

  if (strcmp ("html", ext) == 0)
    return 1;

  if (strcmp ("json", ext) == 0)
    return 1;

  if (strcmp ("csv", ext) == 0)
    return 1;

  return 0;
}
