
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int UNUSED (char**) ;
 int check_lg2 (int ,char*,int *) ;
 int fatal (char*,int *) ;
 int git_reference_foreach (int *,int ,int *) ;
 int show_ref ;

int lg2_for_each_ref(git_repository *repo, int argc, char **argv)
{
 UNUSED(argv);

        if (argc != 1)
                fatal("Sorry, no for-each-ref options supported yet", ((void*)0));

        check_lg2(git_reference_foreach(repo, show_ref, repo),
                  "Could not iterate over references", ((void*)0));

        return 0;
}
