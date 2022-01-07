
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** strings; scalar_t__ count; } ;
struct TYPE_4__ {int flags; TYPE_1__ pathspec; } ;
struct opts {scalar_t__ npaths; char** pathspec; scalar_t__ format; int showbranch; int zterm; char* repodir; int repeat; int showsubmod; TYPE_2__ statusopt; } ;
struct args_info {int pos; } ;


 struct args_info ARGS_INFO_INIT ;
 scalar_t__ FORMAT_DEFAULT ;
 scalar_t__ FORMAT_LONG ;
 void* FORMAT_PORCELAIN ;
 scalar_t__ FORMAT_SHORT ;
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 scalar_t__ MAX_PATHSPEC ;
 int check_lg2 (int,char*,char*) ;
 int fatal (char*,int *) ;
 scalar_t__ match_int_arg (int*,struct args_info*,char*,int ) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void parse_opts(struct opts *o, int argc, char *argv[])
{
 struct args_info args = ARGS_INFO_INIT;

 for (args.pos = 1; args.pos < argc; ++args.pos) {
  char *a = argv[args.pos];

  if (a[0] != '-') {
   if (o->npaths < MAX_PATHSPEC)
    o->pathspec[o->npaths++] = a;
   else
    fatal("Example only supports a limited pathspec", ((void*)0));
  }
  else if (!strcmp(a, "-s") || !strcmp(a, "--short"))
   o->format = FORMAT_SHORT;
  else if (!strcmp(a, "--long"))
   o->format = FORMAT_LONG;
  else if (!strcmp(a, "--porcelain"))
   o->format = FORMAT_PORCELAIN;
  else if (!strcmp(a, "-b") || !strcmp(a, "--branch"))
   o->showbranch = 1;
  else if (!strcmp(a, "-z")) {
   o->zterm = 1;
   if (o->format == FORMAT_DEFAULT)
    o->format = FORMAT_PORCELAIN;
  }
  else if (!strcmp(a, "--ignored"))
   o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_IGNORED;
  else if (!strcmp(a, "-uno") ||
     !strcmp(a, "--untracked-files=no"))
   o->statusopt.flags &= ~GIT_STATUS_OPT_INCLUDE_UNTRACKED;
  else if (!strcmp(a, "-unormal") ||
     !strcmp(a, "--untracked-files=normal"))
   o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
  else if (!strcmp(a, "-uall") ||
     !strcmp(a, "--untracked-files=all"))
   o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED |
    GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;
  else if (!strcmp(a, "--ignore-submodules=all"))
   o->statusopt.flags |= GIT_STATUS_OPT_EXCLUDE_SUBMODULES;
  else if (!strncmp(a, "--git-dir=", strlen("--git-dir=")))
   o->repodir = a + strlen("--git-dir=");
  else if (!strcmp(a, "--repeat"))
   o->repeat = 10;
  else if (match_int_arg(&o->repeat, &args, "--repeat", 0))
             ;
  else if (!strcmp(a, "--list-submodules"))
   o->showsubmod = 1;
  else
   check_lg2(-1, "Unsupported option", a);
 }

 if (o->format == FORMAT_DEFAULT)
  o->format = FORMAT_LONG;
 if (o->format == FORMAT_LONG)
  o->showbranch = 1;
 if (o->npaths > 0) {
  o->statusopt.pathspec.strings = o->pathspec;
  o->statusopt.pathspec.count = o->npaths;
 }
}
