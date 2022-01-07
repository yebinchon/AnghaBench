
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * opts; int * repo; } ;
typedef TYPE_1__ tag_state ;
typedef int tag_options ;
typedef int (* tag_action ) (TYPE_1__*) ;
typedef int git_repository ;


 int parse_options (int (*) (TYPE_1__*),int *,int,char**) ;
 int tag_options_init (int *) ;

int lg2_tag(git_repository *repo, int argc, char **argv)
{
 tag_options opts;
 tag_action action;
 tag_state state;

 tag_options_init(&opts);
 parse_options(&action, &opts, argc, argv);

 state.repo = repo;
 state.opts = &opts;
 action(&state);

 return 0;
}
