
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* src; } ;
typedef TYPE_1__ git_refspec ;



const char *git_refspec_src(const git_refspec *refspec)
{
 return refspec == ((void*)0) ? ((void*)0) : refspec->src;
}
