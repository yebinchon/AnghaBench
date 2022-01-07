
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* get_next ) (TYPE_2__**,TYPE_1__*) ;int walking; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_oid ;
struct TYPE_9__ {int oid; } ;
typedef TYPE_2__ git_commit_list_node ;


 int GIT_ITEROVER ;
 int assert (int) ;
 int git_error_clear () ;
 int git_oid_cpy (int *,int *) ;
 int git_revwalk_reset (TYPE_1__*) ;
 int prepare_walk (TYPE_1__*) ;
 int stub1 (TYPE_2__**,TYPE_1__*) ;

int git_revwalk_next(git_oid *oid, git_revwalk *walk)
{
 int error;
 git_commit_list_node *next;

 assert(walk && oid);

 if (!walk->walking) {
  if ((error = prepare_walk(walk)) < 0)
   return error;
 }

 error = walk->get_next(&next, walk);

 if (error == GIT_ITEROVER) {
  git_revwalk_reset(walk);
  git_error_clear();
  return GIT_ITEROVER;
 }

 if (!error)
  git_oid_cpy(oid, &next->oid);

 return error;
}
