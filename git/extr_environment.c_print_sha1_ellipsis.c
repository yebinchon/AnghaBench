
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strcasecmp (char const*,char*) ;

int print_sha1_ellipsis(void)
{




 static int cached_result = -1;

 if (cached_result < 0) {
  const char *v = getenv("GIT_PRINT_SHA1_ELLIPSIS");
  cached_result = (v && !strcasecmp(v, "yes"));
 }
 return cached_result;
}
