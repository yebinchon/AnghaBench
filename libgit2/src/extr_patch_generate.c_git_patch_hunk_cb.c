
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ line_count; int line_start; int hunk; } ;
typedef TYPE_2__ git_patch_hunk ;
struct TYPE_9__ {int lines; int header_size; int hunks; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
typedef TYPE_3__ git_patch_generated ;
struct TYPE_12__ {scalar_t__ header_len; } ;
typedef TYPE_4__ git_diff_hunk ;
typedef int git_diff_delta ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_UNUSED (int const*) ;
 TYPE_2__* git_array_alloc (int ) ;
 int git_array_size (int ) ;
 int memcpy (int *,TYPE_4__ const*,int) ;

__attribute__((used)) static int git_patch_hunk_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk_,
 void *payload)
{
 git_patch_generated *patch = payload;
 git_patch_hunk *hunk;

 GIT_UNUSED(delta);

 hunk = git_array_alloc(patch->base.hunks);
 GIT_ERROR_CHECK_ALLOC(hunk);

 memcpy(&hunk->hunk, hunk_, sizeof(hunk->hunk));

 patch->base.header_size += hunk_->header_len;

 hunk->line_start = git_array_size(patch->base.lines);
 hunk->line_count = 0;

 return 0;
}
