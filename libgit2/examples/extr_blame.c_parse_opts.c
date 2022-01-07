
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int M; int C; int F; char* commitspec; char* path; int end_line; int start_line; } ;


 int check_lg2 (scalar_t__,char*,int *) ;
 int fatal (char*,int *) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ sscanf (char*,char*,int *,int *) ;
 int strcasecmp (char*,char*) ;
 int strcmp (char*,char*) ;
 int usage (char*,int *) ;

__attribute__((used)) static void parse_opts(struct opts *o, int argc, char *argv[])
{
 int i;
 char *bare_args[3] = {0};

 if (argc < 2) usage(((void*)0), ((void*)0));

 for (i=1; i<argc; i++) {
  char *a = argv[i];

  if (a[0] != '-') {
   int i=0;
   while (bare_args[i] && i < 3) ++i;
   if (i >= 3)
    usage("Invalid argument set", ((void*)0));
   bare_args[i] = a;
  }
  else if (!strcmp(a, "--"))
   continue;
  else if (!strcasecmp(a, "-M"))
   o->M = 1;
  else if (!strcasecmp(a, "-C"))
   o->C = 1;
  else if (!strcasecmp(a, "-F"))
   o->F = 1;
  else if (!strcasecmp(a, "-L")) {
   i++; a = argv[i];
   if (i >= argc) fatal("Not enough arguments to -L", ((void*)0));
   check_lg2(sscanf(a, "%d,%d", &o->start_line, &o->end_line)-2, "-L format error", ((void*)0));
  }
  else {

   if (o->commitspec) fatal("Only one commit spec allowed", ((void*)0));
   o->commitspec = a;
  }
 }


 if (!bare_args[0]) usage("Please specify a path", ((void*)0));
 o->path = bare_args[0];
 if (bare_args[1]) {

  o->path = bare_args[1];
  o->commitspec = bare_args[0];
 }
 if (bare_args[2]) {

  char spec[128] = {0};
  o->path = bare_args[2];
  sprintf(spec, "%s..%s", bare_args[0], bare_args[1]);
  o->commitspec = spec;
 }
}
