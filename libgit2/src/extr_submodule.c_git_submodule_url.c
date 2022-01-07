
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* url; } ;
typedef TYPE_1__ git_submodule ;


 int assert (TYPE_1__*) ;

const char *git_submodule_url(git_submodule *submodule)
{
 assert(submodule);
 return submodule->url;
}
