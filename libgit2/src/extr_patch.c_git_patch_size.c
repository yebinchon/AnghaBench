
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t content_size; int delta; scalar_t__ header_size; scalar_t__ context_size; } ;
typedef TYPE_1__ git_patch ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert (TYPE_1__*) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 scalar_t__ git_diff_delta__format_file_header (int *,int ,int *,int *,int ) ;
 int git_error_clear () ;

size_t git_patch_size(
 git_patch *patch,
 int include_context,
 int include_hunk_headers,
 int include_file_headers)
{
 size_t out;

 assert(patch);

 out = patch->content_size;

 if (!include_context)
  out -= patch->context_size;

 if (include_hunk_headers)
  out += patch->header_size;

 if (include_file_headers) {
  git_buf file_header = GIT_BUF_INIT;

  if (git_diff_delta__format_file_header(
   &file_header, patch->delta, ((void*)0), ((void*)0), 0) < 0)
   git_error_clear();
  else
   out += git_buf_len(&file_header);

  git_buf_dispose(&file_header);
 }

 return out;
}
