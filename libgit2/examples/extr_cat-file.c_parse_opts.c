
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {char* rev; int verbose; int action; int dir; } ;
struct args_info {int pos; } ;


 struct args_info ARGS_INFO_INIT ;
 int SHOW_NONE ;
 int SHOW_PRETTY ;
 int SHOW_SIZE ;
 int SHOW_TYPE ;
 int match_str_arg (int *,struct args_info*,char*) ;
 int strcmp (char*,char*) ;
 int usage (char*,char*) ;

__attribute__((used)) static void parse_opts(struct opts *o, int argc, char *argv[])
{
 struct args_info args = ARGS_INFO_INIT;

 for (args.pos = 1; args.pos < argc; ++args.pos) {
  char *a = argv[args.pos];

  if (a[0] != '-') {
   if (o->rev != ((void*)0))
    usage("Only one rev should be provided", ((void*)0));
   else
    o->rev = a;
  }
  else if (!strcmp(a, "-t"))
   o->action = SHOW_TYPE;
  else if (!strcmp(a, "-s"))
   o->action = SHOW_SIZE;
  else if (!strcmp(a, "-e"))
   o->action = SHOW_NONE;
  else if (!strcmp(a, "-p"))
   o->action = SHOW_PRETTY;
  else if (!strcmp(a, "-q"))
   o->verbose = 0;
  else if (!strcmp(a, "-v"))
   o->verbose = 1;
  else if (!strcmp(a, "--help") || !strcmp(a, "-h"))
   usage(((void*)0), ((void*)0));
  else if (!match_str_arg(&o->dir, &args, "--git-dir"))
   usage("Unknown option", a);
 }

 if (!o->action || !o->rev)
  usage(((void*)0), ((void*)0));

}
