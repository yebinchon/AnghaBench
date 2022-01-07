
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int describe_options ;


 int describe_options_init (int *) ;
 int do_describe (int *,int *) ;
 int parse_options (int *,int,char**) ;

int lg2_describe(git_repository *repo, int argc, char **argv)
{
 describe_options opts;

 describe_options_init(&opts);
 parse_options(&opts, argc, argv);

 do_describe(repo, &opts);

 return 0;
}
