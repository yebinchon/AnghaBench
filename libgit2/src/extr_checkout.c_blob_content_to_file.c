
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct stat {scalar_t__ st_mode; } ;
struct TYPE_14__ {int free; int close; int write; } ;
struct checkout_stream {char const* path; int fd; int open; TYPE_6__ base; } ;
typedef scalar_t__ mode_t ;
struct TYPE_12__ {int * temp_buf; int * attr_session; } ;
typedef TYPE_3__ git_filter_options ;
typedef int git_filter_list ;
typedef int git_blob ;
struct TYPE_11__ {int stat_calls; } ;
struct TYPE_10__ {int file_open_flags; int disable_filters; int dir_mode; scalar_t__ file_mode; } ;
struct TYPE_13__ {TYPE_2__ perfdata; int repo; TYPE_1__ opts; int tmp; int attr_session; } ;
typedef TYPE_4__ checkout_data ;


 int GIT_ERROR_OS ;
 scalar_t__ GIT_FILEMODE_BLOB ;
 TYPE_3__ GIT_FILTER_OPTIONS_INIT ;
 int GIT_FILTER_TO_WORKTREE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int assert (int) ;
 int checkout_stream_close ;
 int checkout_stream_free ;
 int checkout_stream_write ;
 int git_error_set (int ,char*,char const*) ;
 int git_filter_list__load_ext (int **,int ,int *,char const*,int ,TYPE_3__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_stream_blob (int *,int *,TYPE_6__*) ;
 int memset (struct checkout_stream*,int ,int) ;
 int mkpath2file (TYPE_4__*,char const*,int ) ;
 int p_close (int) ;
 int p_open (char const*,int,scalar_t__) ;
 int p_stat (char const*,struct stat*) ;

__attribute__((used)) static int blob_content_to_file(
 checkout_data *data,
 struct stat *st,
 git_blob *blob,
 const char *path,
 const char *hint_path,
 mode_t entry_filemode)
{
 int flags = data->opts.file_open_flags;
 mode_t file_mode = data->opts.file_mode ?
  data->opts.file_mode : entry_filemode;
 git_filter_options filter_opts = GIT_FILTER_OPTIONS_INIT;
 struct checkout_stream writer;
 mode_t mode;
 git_filter_list *fl = ((void*)0);
 int fd;
 int error = 0;

 if (hint_path == ((void*)0))
  hint_path = path;

 if ((error = mkpath2file(data, path, data->opts.dir_mode)) < 0)
  return error;

 if (flags <= 0)
  flags = O_CREAT | O_TRUNC | O_WRONLY;
 if (!(mode = file_mode))
  mode = GIT_FILEMODE_BLOB;

 if ((fd = p_open(path, flags, mode)) < 0) {
  git_error_set(GIT_ERROR_OS, "could not open '%s' for writing", path);
  return fd;
 }

 filter_opts.attr_session = &data->attr_session;
 filter_opts.temp_buf = &data->tmp;

 if (!data->opts.disable_filters &&
  (error = git_filter_list__load_ext(
   &fl, data->repo, blob, hint_path,
   GIT_FILTER_TO_WORKTREE, &filter_opts))) {
  p_close(fd);
  return error;
 }


 memset(&writer, 0, sizeof(struct checkout_stream));
 writer.base.write = checkout_stream_write;
 writer.base.close = checkout_stream_close;
 writer.base.free = checkout_stream_free;
 writer.path = path;
 writer.fd = fd;
 writer.open = 1;

 error = git_filter_list_stream_blob(fl, blob, &writer.base);

 assert(writer.open == 0);

 git_filter_list_free(fl);

 if (error < 0)
  return error;

 if (st) {
  data->perfdata.stat_calls++;

  if ((error = p_stat(path, st)) < 0) {
   git_error_set(GIT_ERROR_OS, "failed to stat '%s'", path);
   return error;
  }

  st->st_mode = entry_filemode;
 }

 return 0;
}
