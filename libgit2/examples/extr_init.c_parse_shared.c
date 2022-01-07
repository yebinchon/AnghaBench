
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GIT_REPOSITORY_INIT_SHARED_ALL ;
 int GIT_REPOSITORY_INIT_SHARED_GROUP ;
 int GIT_REPOSITORY_INIT_SHARED_UMASK ;
 int strcmp (char const*,char*) ;
 long strtol (char const*,char**,int) ;
 int usage (char*,char const*) ;

__attribute__((used)) static uint32_t parse_shared(const char *shared)
{
 if (!strcmp(shared, "false") || !strcmp(shared, "umask"))
  return GIT_REPOSITORY_INIT_SHARED_UMASK;

 else if (!strcmp(shared, "true") || !strcmp(shared, "group"))
  return GIT_REPOSITORY_INIT_SHARED_GROUP;

 else if (!strcmp(shared, "all") || !strcmp(shared, "world") ||
    !strcmp(shared, "everybody"))
  return GIT_REPOSITORY_INIT_SHARED_ALL;

 else if (shared[0] == '0') {
  long val;
  char *end = ((void*)0);
  val = strtol(shared + 1, &end, 8);
  if (end == shared + 1 || *end != 0)
   usage("invalid octal value for --shared", shared);
  return (uint32_t)val;
 }

 else
  usage("unknown value for --shared", shared);

 return 0;
}
