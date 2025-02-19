
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int skip_prefix (char const*,char const*,char const**) ;
 int strcmp (char const*,char const*) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int is_rr_file(const char *name, const char *filename, int *variant)
{
 const char *suffix;
 char *ep;

 if (!strcmp(name, filename)) {
  *variant = 0;
  return 1;
 }
 if (!skip_prefix(name, filename, &suffix) || *suffix != '.')
  return 0;

 errno = 0;
 *variant = strtol(suffix + 1, &ep, 10);
 if (errno || *ep)
  return 0;
 return 1;
}
