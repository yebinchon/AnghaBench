
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int repo; } ;
struct TYPE_6__ {int type; int target; TYPE_1__ object; } ;
typedef TYPE_2__ git_tag ;
typedef int git_object ;


 int assert (TYPE_2__ const*) ;
 int git_object_lookup (int **,int ,int *,int ) ;

int git_tag_target(git_object **target, const git_tag *t)
{
 assert(t);
 return git_object_lookup(target, t->object.repo, &t->target, t->type);
}
