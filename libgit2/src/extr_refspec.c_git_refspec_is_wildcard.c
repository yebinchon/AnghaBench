
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* src; } ;
typedef TYPE_1__ git_refspec ;


 int assert (int) ;
 int strlen (char*) ;

int git_refspec_is_wildcard(const git_refspec *spec)
{
 assert(spec && spec->src);

 return (spec->src[strlen(spec->src) - 1] == '*');
}
