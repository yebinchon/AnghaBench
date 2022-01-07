
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_funcname {int cflags; int pattern; } ;


 scalar_t__ git_config_string (int *,char const*,char const*) ;

__attribute__((used)) static int parse_funcname(struct userdiff_funcname *f, const char *k,
  const char *v, int cflags)
{
 if (git_config_string(&f->pattern, k, v) < 0)
  return -1;
 f->cflags = cflags;
 return 0;
}
