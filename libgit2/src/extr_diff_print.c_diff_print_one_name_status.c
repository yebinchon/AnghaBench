
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mode; char const* path; } ;
struct TYPE_8__ {scalar_t__ mode; char const* path; } ;
struct TYPE_10__ {TYPE_2__ old_file; TYPE_1__ new_file; int status; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_buf ;
struct TYPE_12__ {int content_len; int content; int origin; } ;
struct TYPE_11__ {int (* strcomp ) (char const*,char const*) ;int flags; int (* print_cb ) (TYPE_3__ const*,int *,TYPE_6__*,int ) ;int payload; TYPE_6__ line; int * buf; } ;
typedef TYPE_4__ diff_print_info ;


 int GIT_DIFF_LINE_FILE_HDR ;
 int GIT_DIFF_SHOW_UNMODIFIED ;
 int GIT_UNUSED (float) ;
 char diff_pick_suffix (scalar_t__) ;
 int git__strcmp (char const*,char const*) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_len (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,char,char const*,...) ;
 char git_diff_status_char (int ) ;
 int stub1 (TYPE_3__ const*,int *,TYPE_6__*,int ) ;

__attribute__((used)) static int diff_print_one_name_status(
 const git_diff_delta *delta, float progress, void *data)
{
 diff_print_info *pi = data;
 git_buf *out = pi->buf;
 char old_suffix, new_suffix, code = git_diff_status_char(delta->status);
 int(*strcomp)(const char *, const char *) = pi->strcomp ?
  pi->strcomp : git__strcmp;

 GIT_UNUSED(progress);

 if ((pi->flags & GIT_DIFF_SHOW_UNMODIFIED) == 0 && code == ' ')
  return 0;

 old_suffix = diff_pick_suffix(delta->old_file.mode);
 new_suffix = diff_pick_suffix(delta->new_file.mode);

 git_buf_clear(out);

 if (delta->old_file.path != delta->new_file.path &&
  strcomp(delta->old_file.path,delta->new_file.path) != 0)
  git_buf_printf(out, "%c\t%s%c %s%c\n", code,
   delta->old_file.path, old_suffix, delta->new_file.path, new_suffix);
 else if (delta->old_file.mode != delta->new_file.mode &&
  delta->old_file.mode != 0 && delta->new_file.mode != 0)
  git_buf_printf(out, "%c\t%s%c %s%c\n", code,
   delta->old_file.path, old_suffix, delta->new_file.path, new_suffix);
 else if (old_suffix != ' ')
  git_buf_printf(out, "%c\t%s%c\n", code, delta->old_file.path, old_suffix);
 else
  git_buf_printf(out, "%c\t%s\n", code, delta->old_file.path);
 if (git_buf_oom(out))
  return -1;

 pi->line.origin = GIT_DIFF_LINE_FILE_HDR;
 pi->line.content = git_buf_cstr(out);
 pi->line.content_len = git_buf_len(out);

 return pi->print_cb(delta, ((void*)0), &pi->line, pi->payload);
}
