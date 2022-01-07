
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_SUPER_PREFIX_ENVIRONMENT ;
 int getenv (int ) ;
 char const* super_prefix ;
 char* xstrdup_or_null (int ) ;

const char *get_super_prefix(void)
{
 static int initialized;
 if (!initialized) {
  super_prefix = xstrdup_or_null(getenv(GIT_SUPER_PREFIX_ENVIRONMENT));
  initialized = 1;
 }
 return super_prefix;
}
