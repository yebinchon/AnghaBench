
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int push; } ;
typedef TYPE_1__ git_refspec ;
typedef int git_direction ;


 int assert (TYPE_1__ const*) ;

git_direction git_refspec_direction(const git_refspec *spec)
{
 assert(spec);

 return spec->push;
}
