
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int id_abbrev; int mode; } ;
struct TYPE_9__ {int id_abbrev; } ;
struct TYPE_11__ {int flags; scalar_t__ status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
struct TYPE_13__ {int content_len; int content; int origin; } ;
struct TYPE_12__ {char* old_prefix; char* new_prefix; int flags; int id_strlen; int (* print_cb ) (TYPE_3__ const*,int *,TYPE_6__*,int ) ;int payload; TYPE_6__ line; int buf; } ;
typedef TYPE_4__ diff_print_info ;


 char* DIFF_NEW_PREFIX_DEFAULT ;
 char* DIFF_OLD_PREFIX_DEFAULT ;
 scalar_t__ GIT_DELTA_IGNORED ;
 scalar_t__ GIT_DELTA_UNMODIFIED ;
 scalar_t__ GIT_DELTA_UNREADABLE ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_DIFF_FORCE_BINARY ;
 int GIT_DIFF_LINE_FILE_HDR ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int GIT_UNUSED (float) ;
 scalar_t__ S_ISDIR (int ) ;
 int git_buf_cstr (int ) ;
 int git_buf_len (int ) ;
 int git_diff_delta__format_file_header (int ,TYPE_3__ const*,char const*,char const*,int) ;
 int stub1 (TYPE_3__ const*,int *,TYPE_6__*,int ) ;

__attribute__((used)) static int diff_print_patch_file(
 const git_diff_delta *delta, float progress, void *data)
{
 int error;
 diff_print_info *pi = data;
 const char *oldpfx =
  pi->old_prefix ? pi->old_prefix : DIFF_OLD_PREFIX_DEFAULT;
 const char *newpfx =
  pi->new_prefix ? pi->new_prefix : DIFF_NEW_PREFIX_DEFAULT;

 bool binary = (delta->flags & GIT_DIFF_FLAG_BINARY) ||
  (pi->flags & GIT_DIFF_FORCE_BINARY);
 bool show_binary = !!(pi->flags & GIT_DIFF_SHOW_BINARY);
 int id_strlen = pi->id_strlen;

 if (binary && show_binary)
  id_strlen = delta->old_file.id_abbrev ? delta->old_file.id_abbrev :
   delta->new_file.id_abbrev;

 GIT_UNUSED(progress);

 if (S_ISDIR(delta->new_file.mode) ||
  delta->status == GIT_DELTA_UNMODIFIED ||
  delta->status == GIT_DELTA_IGNORED ||
  delta->status == GIT_DELTA_UNREADABLE ||
  (delta->status == GIT_DELTA_UNTRACKED &&
   (pi->flags & GIT_DIFF_SHOW_UNTRACKED_CONTENT) == 0))
  return 0;

 if ((error = git_diff_delta__format_file_header(
   pi->buf, delta, oldpfx, newpfx, id_strlen)) < 0)
  return error;

 pi->line.origin = GIT_DIFF_LINE_FILE_HDR;
 pi->line.content = git_buf_cstr(pi->buf);
 pi->line.content_len = git_buf_len(pi->buf);

 return pi->print_cb(delta, ((void*)0), &pi->line, pi->payload);
}
