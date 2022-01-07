
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* opts; int * repo; } ;
typedef TYPE_1__ tag_state ;
struct TYPE_5__ {char* target; int force; int tag_name; } ;
typedef TYPE_2__ tag_options ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int check (int,char*) ;
 int check_lg2 (int ,char*,char*) ;
 int git_object_free (int *) ;
 int git_revparse_single (int **,int *,char*) ;
 int git_tag_create_lightweight (int *,int *,int ,int *,int ) ;

__attribute__((used)) static void action_create_lighweight_tag(tag_state *state)
{
 git_repository *repo = state->repo;
 tag_options *opts = state->opts;
 git_oid oid;
 git_object *target;

 check(!opts->tag_name, "Name required");

 if (!opts->target) opts->target = "HEAD";

 check(!opts->target, "Target required");

 check_lg2(git_revparse_single(&target, repo, opts->target),
   "Unable to resolve spec", opts->target);

 check_lg2(git_tag_create_lightweight(&oid, repo, opts->tag_name,
    target, opts->force), "Unable to create tag", ((void*)0));

 git_object_free(target);
}
