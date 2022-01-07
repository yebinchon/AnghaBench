
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int length; } ;
struct TYPE_6__ {TYPE_1__ hunks; } ;
typedef TYPE_2__ git_blame ;


 int assert (TYPE_2__*) ;

uint32_t git_blame_get_hunk_count(git_blame *blame)
{
 assert(blame);
 return (uint32_t)blame->hunks.length;
}
