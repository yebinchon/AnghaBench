
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_1__ new_file; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_buf ;
struct TYPE_10__ {int content_len; int content; int origin; } ;
struct TYPE_9__ {int flags; int (* print_cb ) (TYPE_2__ const*,int *,TYPE_5__*,int ) ;int payload; TYPE_5__ line; int * buf; } ;
typedef TYPE_3__ diff_print_info ;


 scalar_t__ GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_LINE_FILE_HDR ;
 int GIT_DIFF_SHOW_UNMODIFIED ;
 int GIT_UNUSED (float) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_len (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,int ) ;
 int stub1 (TYPE_2__ const*,int *,TYPE_5__*,int ) ;

__attribute__((used)) static int diff_print_one_name_only(
 const git_diff_delta *delta, float progress, void *data)
{
 diff_print_info *pi = data;
 git_buf *out = pi->buf;

 GIT_UNUSED(progress);

 if ((pi->flags & GIT_DIFF_SHOW_UNMODIFIED) == 0 &&
  delta->status == GIT_DELTA_UNMODIFIED)
  return 0;

 git_buf_clear(out);
 git_buf_puts(out, delta->new_file.path);
 git_buf_putc(out, '\n');
 if (git_buf_oom(out))
  return -1;

 pi->line.origin = GIT_DIFF_LINE_FILE_HDR;
 pi->line.content = git_buf_cstr(out);
 pi->line.content_len = git_buf_len(out);

 return pi->print_cb(delta, ((void*)0), &pi->line, pi->payload);
}
