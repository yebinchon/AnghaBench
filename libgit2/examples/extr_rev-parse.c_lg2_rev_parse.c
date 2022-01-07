
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_state {int member_0; } ;
typedef int git_repository ;


 int check_lg2 (int ,char*,int *) ;
 int parse_opts (struct parse_state*,int,char**) ;
 int parse_revision (int *,struct parse_state*) ;

int lg2_rev_parse(git_repository *repo, int argc, char *argv[])
{
 struct parse_state ps = {0};

 parse_opts(&ps, argc, argv);

 check_lg2(parse_revision(repo, &ps), "Parsing", ((void*)0));

 return 0;
}
