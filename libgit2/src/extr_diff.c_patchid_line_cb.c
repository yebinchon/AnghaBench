
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct patch_id_args {int ctx; } ;
struct TYPE_9__ {int origin; int content_len; int content; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
struct TYPE_10__ {int size; int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;






 int GIT_ERROR_PATCH ;
 int GIT_UNUSED (int const*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_put (TYPE_2__*,int ,int ) ;
 int git_buf_putc (TYPE_2__*,char) ;
 int git_error_set (int ,char*) ;
 int git_hash_update (int *,int ,int ) ;
 int strip_spaces (TYPE_2__*) ;

__attribute__((used)) static int patchid_line_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 struct patch_id_args *args = (struct patch_id_args *) payload;
 git_buf buf = GIT_BUF_INIT;
 int error;

 GIT_UNUSED(delta);
 GIT_UNUSED(hunk);

 switch (line->origin) {
     case 133:
  git_buf_putc(&buf, '+');
  break;
     case 129:
  git_buf_putc(&buf, '-');
  break;
     case 131:
  break;
     case 130:
     case 132:
     case 128:




  return 0;
     default:
  git_error_set(GIT_ERROR_PATCH, "invalid line origin for patch");
  return -1;
 }

 git_buf_put(&buf, line->content, line->content_len);
 strip_spaces(&buf);

 if ((error = git_hash_update(&args->ctx, buf.ptr, buf.size)) < 0)
  goto out;

out:
 git_buf_dispose(&buf);
 return error;
}
