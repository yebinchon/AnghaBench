
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int content_len; int content; int origin; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
typedef int git_buf ;


 int GIT_DIFF_LINE_ADDITION ;
 int GIT_DIFF_LINE_CONTEXT ;
 int GIT_DIFF_LINE_DELETION ;
 int GIT_ERROR_INVALID ;
 int GIT_UNUSED (int const*) ;
 int git_buf_put (int *,int ,int ) ;
 int git_buf_putc (int *,int ) ;
 int git_error_set (int ,char*) ;

int git_diff_print_callback__to_buf(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 git_buf *output = payload;
 GIT_UNUSED(delta); GIT_UNUSED(hunk);

 if (!output) {
  git_error_set(GIT_ERROR_INVALID, "buffer pointer must be provided");
  return -1;
 }

 if (line->origin == GIT_DIFF_LINE_ADDITION ||
  line->origin == GIT_DIFF_LINE_DELETION ||
  line->origin == GIT_DIFF_LINE_CONTEXT)
  git_buf_putc(output, line->origin);

 return git_buf_put(output, line->content, line->content_len);
}
