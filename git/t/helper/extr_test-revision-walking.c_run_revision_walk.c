
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct commit {int dummy; } ;


 int ARRAY_SIZE (char const**) ;
 int die (char*) ;
 struct commit* get_revision (struct rev_info*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int print_commit (struct commit*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int reset_revision_walk () ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int the_repository ;

__attribute__((used)) static int run_revision_walk(void)
{
 struct rev_info rev;
 struct commit *commit;
 const char *argv[] = {((void*)0), "--all", ((void*)0)};
 int argc = ARRAY_SIZE(argv) - 1;
 int got_revision = 0;

 repo_init_revisions(the_repository, &rev, ((void*)0));
 setup_revisions(argc, argv, &rev, ((void*)0));
 if (prepare_revision_walk(&rev))
  die("revision walk setup failed");

 while ((commit = get_revision(&rev)) != ((void*)0)) {
  print_commit(commit);
  got_revision = 1;
 }

 reset_revision_walk();
 return got_revision;
}
