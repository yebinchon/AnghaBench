
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int git_filter_list ;
typedef scalar_t__ git_file ;
struct TYPE_17__ {int flags; } ;
typedef TYPE_2__ git_diff_options ;
struct TYPE_20__ {scalar_t__ data; int len; } ;
struct TYPE_18__ {int flags; TYPE_6__ map; TYPE_1__* file; int repo; } ;
typedef TYPE_3__ git_diff_file_content ;
struct TYPE_19__ {scalar_t__ ptr; int size; } ;
typedef TYPE_4__ git_buf ;
struct TYPE_16__ {scalar_t__ size; int path; } ;


 TYPE_4__ GIT_BUF_INIT ;
 int GIT_DIFF_FLAG__FREE_DATA ;
 int GIT_DIFF_FLAG__UNMAP_DATA ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_FILTER_ALLOW_UNSAFE ;
 int GIT_FILTER_TO_ODB ;
 scalar_t__ diff_file_content_binary_by_size (TYPE_3__*) ;
 int git_buf_cstr (TYPE_4__*) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_error_clear () ;
 int git_filter_list_apply_to_data (TYPE_4__*,int *,TYPE_4__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,int ,int ,int ) ;
 scalar_t__ git_futils_filesize (scalar_t__) ;
 int git_futils_mmap_ro (TYPE_6__*,scalar_t__,int ,size_t) ;
 scalar_t__ git_futils_open_ro (int ) ;
 int git_futils_readbuffer_fd (TYPE_4__*,scalar_t__,size_t) ;
 int p_close (scalar_t__) ;

__attribute__((used)) static int diff_file_content_load_workdir_file(
 git_diff_file_content *fc,
 git_buf *path,
 git_diff_options *diff_opts)
{
 int error = 0;
 git_filter_list *fl = ((void*)0);
 git_file fd = git_futils_open_ro(git_buf_cstr(path));
 git_buf raw = GIT_BUF_INIT;

 if (fd < 0)
  return fd;

 if (!fc->file->size &&
  !(fc->file->size = git_futils_filesize(fd)))
  goto cleanup;

 if ((diff_opts->flags & GIT_DIFF_SHOW_BINARY) == 0 &&
  diff_file_content_binary_by_size(fc))
  goto cleanup;

 if ((error = git_filter_list_load(
   &fl, fc->repo, ((void*)0), fc->file->path,
   GIT_FILTER_TO_ODB, GIT_FILTER_ALLOW_UNSAFE)) < 0)
  goto cleanup;


 if (fl == ((void*)0)) {
  if (!(error = git_futils_mmap_ro(
    &fc->map, fd, 0, (size_t)fc->file->size))) {
   fc->flags |= GIT_DIFF_FLAG__UNMAP_DATA;
   goto cleanup;
  }


  git_error_clear();
 }

 if (!(error = git_futils_readbuffer_fd(&raw, fd, (size_t)fc->file->size))) {
  git_buf out = GIT_BUF_INIT;

  error = git_filter_list_apply_to_data(&out, fl, &raw);

  if (out.ptr != raw.ptr)
   git_buf_dispose(&raw);

  if (!error) {
   fc->map.len = out.size;
   fc->map.data = out.ptr;
   fc->flags |= GIT_DIFF_FLAG__FREE_DATA;
  }
 }

cleanup:
 git_filter_list_free(fl);
 p_close(fd);

 return error;
}
