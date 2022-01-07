
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path; } ;
typedef TYPE_1__ git_sortedcache ;



const char *git_sortedcache_path(git_sortedcache *sc)
{
 return sc->path;
}
