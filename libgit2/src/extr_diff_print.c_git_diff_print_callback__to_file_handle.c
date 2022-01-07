
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ origin; int content_len; int content; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
typedef int FILE ;


 scalar_t__ GIT_DIFF_LINE_ADDITION ;
 scalar_t__ GIT_DIFF_LINE_CONTEXT ;
 scalar_t__ GIT_DIFF_LINE_DELETION ;
 int GIT_UNUSED (int const*) ;
 int fputc (scalar_t__,int *) ;
 int fwrite (int ,int,int ,int *) ;
 void* stdout ;

int git_diff_print_callback__to_file_handle(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 FILE *fp = payload ? payload : stdout;

 GIT_UNUSED(delta); GIT_UNUSED(hunk);

 if (line->origin == GIT_DIFF_LINE_CONTEXT ||
  line->origin == GIT_DIFF_LINE_ADDITION ||
  line->origin == GIT_DIFF_LINE_DELETION)
  fputc(line->origin, fp);
 fwrite(line->content, 1, line->content_len, fp);
 return 0;
}
