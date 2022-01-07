
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct repository {int dummy; } ;


 int die_usage (int,char const**,char*) ;
 int null_oid ;
 int print_config_from_gitmodules (struct repository*,char const*) ;
 scalar_t__ repo_submodule_init (struct repository*,int ,struct submodule const*) ;
 int setup_git_directory () ;
 int submodule_free (int ) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;

int cmd__submodule_nested_repo_config(int argc, const char **argv)
{
 struct repository subrepo;
 const struct submodule *sub;

 if (argc < 3)
  die_usage(argc, argv, "Wrong number of arguments.");

 setup_git_directory();

 sub = submodule_from_path(the_repository, &null_oid, argv[1]);
 if (repo_submodule_init(&subrepo, the_repository, sub)) {
  die_usage(argc, argv, "Submodule not found.");
 }


 print_config_from_gitmodules(&subrepo, argv[2]);

 submodule_free(the_repository);

 return 0;
}
