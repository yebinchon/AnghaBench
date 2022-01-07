
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int line_count; } ;
typedef TYPE_2__ git_patch_hunk ;
struct TYPE_12__ {int content_size; int context_size; int lines; int hunks; } ;
struct TYPE_14__ {TYPE_1__ base; } ;
typedef TYPE_3__ git_patch_generated ;
struct TYPE_15__ {scalar_t__ origin; scalar_t__ content_len; } ;
typedef TYPE_4__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;


 scalar_t__ GIT_DIFF_LINE_ADDITION ;
 scalar_t__ GIT_DIFF_LINE_CONTEXT ;
 scalar_t__ GIT_DIFF_LINE_CONTEXT_EOFNL ;
 scalar_t__ GIT_DIFF_LINE_DELETION ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int GIT_UNUSED (int const*) ;
 int assert (TYPE_2__*) ;
 TYPE_4__* git_array_alloc (int ) ;
 TYPE_2__* git_array_last (int ) ;
 int memcpy (TYPE_4__*,TYPE_4__ const*,int) ;

__attribute__((used)) static int patch_generated_line_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk_,
 const git_diff_line *line_,
 void *payload)
{
 git_patch_generated *patch = payload;
 git_patch_hunk *hunk;
 git_diff_line *line;

 GIT_UNUSED(delta);
 GIT_UNUSED(hunk_);

 hunk = git_array_last(patch->base.hunks);
 assert(hunk);

 line = git_array_alloc(patch->base.lines);
 GIT_ERROR_CHECK_ALLOC(line);

 memcpy(line, line_, sizeof(*line));



 patch->base.content_size += line->content_len;

 if (line->origin == GIT_DIFF_LINE_ADDITION ||
  line->origin == GIT_DIFF_LINE_DELETION)
  patch->base.content_size += 1;
 else if (line->origin == GIT_DIFF_LINE_CONTEXT) {
  patch->base.content_size += 1;
  patch->base.context_size += line->content_len + 1;
 } else if (line->origin == GIT_DIFF_LINE_CONTEXT_EOFNL)
  patch->base.context_size += line->content_len;

 hunk->line_count++;

 return 0;
}
