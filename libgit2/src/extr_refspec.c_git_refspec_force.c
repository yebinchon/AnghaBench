
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int force; } ;
typedef TYPE_1__ git_refspec ;


 int assert (TYPE_1__ const*) ;

int git_refspec_force(const git_refspec *refspec)
{
 assert(refspec);

 return refspec->force;
}
