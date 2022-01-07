
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ git_tag ;
typedef int git_object_t ;


 int assert (TYPE_1__ const*) ;

git_object_t git_tag_target_type(const git_tag *t)
{
 assert(t);
 return t->type;
}
