
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int path; } ;
struct TYPE_13__ {int path; } ;
struct TYPE_15__ {int similarity; scalar_t__ status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
struct TYPE_16__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 scalar_t__ GIT_DELTA_COPIED ;
 scalar_t__ GIT_DELTA_RENAMED ;
 int GIT_ERROR_PATCH ;
 int abort () ;
 int git_buf_dispose (TYPE_4__*) ;
 scalar_t__ git_buf_oom (TYPE_4__*) ;
 int git_buf_printf (TYPE_4__*,char*,int,char const*,int ,char const*,int ) ;
 int git_buf_puts (TYPE_4__*,int ) ;
 int git_buf_quote (TYPE_4__*) ;
 int git_error_set (int ,char*,int) ;

int diff_delta_format_similarity_header(
 git_buf *out,
 const git_diff_delta *delta)
{
 git_buf old_path = GIT_BUF_INIT, new_path = GIT_BUF_INIT;
 const char *type;
 int error = 0;

 if (delta->similarity > 100) {
  git_error_set(GIT_ERROR_PATCH, "invalid similarity %d", delta->similarity);
  error = -1;
  goto done;
 }

 if (delta->status == GIT_DELTA_RENAMED)
  type = "rename";
 else if (delta->status == GIT_DELTA_COPIED)
  type = "copy";
 else
  abort();

 if ((error = git_buf_puts(&old_path, delta->old_file.path)) < 0 ||
  (error = git_buf_puts(&new_path, delta->new_file.path)) < 0 ||
  (error = git_buf_quote(&old_path)) < 0 ||
  (error = git_buf_quote(&new_path)) < 0)
  goto done;

 git_buf_printf(out,
  "similarity index %d%%\n"
  "%s from %s\n"
  "%s to %s\n",
  delta->similarity,
  type, old_path.ptr,
  type, new_path.ptr);

 if (git_buf_oom(out))
  error = -1;

done:
 git_buf_dispose(&old_path);
 git_buf_dispose(&new_path);

 return error;
}
