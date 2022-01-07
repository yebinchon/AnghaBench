
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; size_t len; } ;
struct TYPE_6__ {TYPE_1__ map; } ;
struct TYPE_7__ {TYPE_2__ ofile; } ;
typedef TYPE_3__ git_patch_generated ;



void git_patch_generated_old_data(
 char **ptr, size_t *len, git_patch_generated *patch)
{
 *ptr = patch->ofile.map.data;
 *len = patch->ofile.map.len;
}
