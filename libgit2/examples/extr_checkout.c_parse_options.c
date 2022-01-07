
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct args_info {int argc; int pos; char** argv; } ;
struct TYPE_4__ {int progress; int force; int perf; } ;
typedef TYPE_1__ checkout_options ;


 scalar_t__ match_bool_arg (int*,struct args_info*,char*) ;
 scalar_t__ match_str_arg (char const**,struct args_info*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int print_usage () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void parse_options(const char **repo_path, checkout_options *opts, struct args_info *args)
{
 if (args->argc <= 1)
  print_usage();

 memset(opts, 0, sizeof(*opts));


 opts->progress = 1;

 for (args->pos = 1; args->pos < args->argc; ++args->pos) {
  const char *curr = args->argv[args->pos];
  int bool_arg;

  if (strcmp(curr, "--") == 0) {
   break;
  } else if (!strcmp(curr, "--force")) {
   opts->force = 1;
  } else if (match_bool_arg(&bool_arg, args, "--progress")) {
   opts->progress = bool_arg;
  } else if (match_bool_arg(&bool_arg, args, "--perf")) {
   opts->perf = bool_arg;
  } else if (match_str_arg(repo_path, args, "--git-dir")) {
   continue;
  } else {
   break;
  }
 }
}
