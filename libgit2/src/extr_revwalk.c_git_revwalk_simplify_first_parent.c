
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_parent; } ;
typedef TYPE_1__ git_revwalk ;



void git_revwalk_simplify_first_parent(git_revwalk *walk)
{
 walk->first_parent = 1;
}
