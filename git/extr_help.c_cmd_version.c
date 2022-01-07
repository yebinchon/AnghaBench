
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 char* GIT_HOST_CPU ;
 char const* N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,char*) ;
 struct option OPT_END () ;
 char* git_built_from_commit_string ;
 char* git_version_string ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 int printf (char*,...) ;

int cmd_version(int argc, const char **argv, const char *prefix)
{
 int build_options = 0;
 const char * const usage[] = {
  N_("git version [<options>]"),
  ((void*)0)
 };
 struct option options[] = {
  OPT_BOOL(0, "build-options", &build_options,
    "also print build options"),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options, usage, 0);







 printf("git version %s\n", git_version_string);

 if (build_options) {
  printf("cpu: %s\n", GIT_HOST_CPU);
  if (git_built_from_commit_string[0])
   printf("built from commit: %s\n",
          git_built_from_commit_string);
  else
   printf("no commit associated with this build\n");
  printf("sizeof-long: %d\n", (int)sizeof(long));
  printf("sizeof-size_t: %d\n", (int)sizeof(size_t));

 }
 return 0;
}
