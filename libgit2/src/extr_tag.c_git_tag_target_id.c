
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const target; } ;
typedef TYPE_1__ git_tag ;
typedef int git_oid ;


 int assert (TYPE_1__ const*) ;

const git_oid *git_tag_target_id(const git_tag *t)
{
 assert(t);
 return &t->target;
}
