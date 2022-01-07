
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* opts; int * repo; } ;
typedef TYPE_1__ tag_state ;
struct TYPE_5__ {char* target; int force; int message; int tag_name; } ;
typedef TYPE_2__ tag_options ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int check (int,char*) ;
 int check_lg2 (int ,char*,char*) ;
 int git_object_free (int *) ;
 int git_revparse_single (int **,int *,char*) ;
 int git_signature_default (int **,int *) ;
 int git_signature_free (int *) ;
 int git_tag_create (int *,int *,int ,int *,int *,int ,int ) ;

__attribute__((used)) static void action_create_tag(tag_state *state)
{
 git_repository *repo = state->repo;
 tag_options *opts = state->opts;
 git_signature *tagger;
 git_oid oid;
 git_object *target;

 check(!opts->tag_name, "Name required");
 check(!opts->message, "Message required");

 if (!opts->target) opts->target = "HEAD";

 check_lg2(git_revparse_single(&target, repo, opts->target),
   "Unable to resolve spec", opts->target);

 check_lg2(git_signature_default(&tagger, repo),
   "Unable to create signature", ((void*)0));

 check_lg2(git_tag_create(&oid, repo, opts->tag_name,
    target, tagger, opts->message, opts->force), "Unable to create tag", ((void*)0));

 git_object_free(target);
 git_signature_free(tagger);
}
