
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int payload; int (* file_cb ) (int ,float,int ) ;} ;
typedef TYPE_4__ git_patch_generated_output ;
struct TYPE_10__ {int delta; } ;
struct TYPE_12__ {TYPE_3__ base; TYPE_2__* diff; scalar_t__ delta_index; } ;
typedef TYPE_5__ git_patch_generated ;
struct TYPE_8__ {float length; } ;
struct TYPE_9__ {TYPE_1__ deltas; } ;


 int git_error_set_after_callback_function (int ,char*) ;
 int stub1 (int ,float,int ) ;

__attribute__((used)) static int patch_generated_invoke_file_callback(
 git_patch_generated *patch, git_patch_generated_output *output)
{
 float progress = patch->diff ?
  ((float)patch->delta_index / patch->diff->deltas.length) : 1.0f;

 if (!output->file_cb)
  return 0;

 return git_error_set_after_callback_function(
  output->file_cb(patch->base.delta, progress, output->payload),
  "git_patch");
}
