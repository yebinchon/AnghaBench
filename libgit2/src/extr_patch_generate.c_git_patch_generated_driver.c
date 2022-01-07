
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * driver; } ;
struct TYPE_5__ {TYPE_1__ ofile; } ;
typedef TYPE_2__ git_patch_generated ;
typedef int git_diff_driver ;



git_diff_driver *git_patch_generated_driver(git_patch_generated *patch)
{

 return patch->ofile.driver;
}
