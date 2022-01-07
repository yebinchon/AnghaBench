
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char* url; char* path; char* name; } ;
struct object_id {int dummy; } ;


 int die_usage (int,char const**,char*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oidclr (struct object_id*) ;
 int printf (char*,char*,char*) ;
 int setup_git_directory () ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int submodule_free (int ) ;
 struct submodule* submodule_from_name (int ,struct object_id*,char const*) ;
 struct submodule* submodule_from_path (int ,struct object_id*,char const*) ;
 int the_repository ;

int cmd__submodule_config(int argc, const char **argv)
{
 const char **arg = argv;
 int my_argc = argc;
 int output_url = 0;
 int lookup_name = 0;

 arg++;
 my_argc--;
 while (arg[0] && starts_with(arg[0], "--")) {
  if (!strcmp(arg[0], "--url"))
   output_url = 1;
  if (!strcmp(arg[0], "--name"))
   lookup_name = 1;
  arg++;
  my_argc--;
 }

 if (my_argc % 2 != 0)
  die_usage(argc, argv, "Wrong number of arguments.");

 setup_git_directory();

 while (*arg) {
  struct object_id commit_oid;
  const struct submodule *submodule;
  const char *commit;
  const char *path_or_name;

  commit = arg[0];
  path_or_name = arg[1];

  if (commit[0] == '\0')
   oidclr(&commit_oid);
  else if (get_oid(commit, &commit_oid) < 0)
   die_usage(argc, argv, "Commit not found.");

  if (lookup_name) {
   submodule = submodule_from_name(the_repository,
       &commit_oid, path_or_name);
  } else
   submodule = submodule_from_path(the_repository,
       &commit_oid, path_or_name);
  if (!submodule)
   die_usage(argc, argv, "Submodule not found.");

  if (output_url)
   printf("Submodule url: '%s' for path '%s'\n",
     submodule->url, submodule->path);
  else
   printf("Submodule name: '%s' for path '%s'\n",
     submodule->name, submodule->path);

  arg += 2;
 }

 submodule_free(the_repository);

 return 0;
}
