
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int git_buf ;
typedef int git_blob ;
struct TYPE_7__ {int stat_calls; } ;
struct TYPE_6__ {int dir_mode; } ;
struct TYPE_8__ {TYPE_2__ perfdata; scalar_t__ can_symlink; TYPE_1__ opts; } ;
typedef TYPE_3__ checkout_data ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_CHECKOUT ;
 int GIT_ERROR_OS ;
 int GIT_FILEMODE_LINK ;
 int git_blob__getbuf (int *,int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_futils_fake_symlink (int ,char const*) ;
 int mkpath2file (TYPE_3__*,char const*,int ) ;
 int p_lstat (char const*,struct stat*) ;
 int p_symlink (int ,char const*) ;

__attribute__((used)) static int blob_content_to_link(
 checkout_data *data,
 struct stat *st,
 git_blob *blob,
 const char *path)
{
 git_buf linktarget = GIT_BUF_INIT;
 int error;

 if ((error = mkpath2file(data, path, data->opts.dir_mode)) < 0)
  return error;

 if ((error = git_blob__getbuf(&linktarget, blob)) < 0)
  return error;

 if (data->can_symlink) {
  if ((error = p_symlink(git_buf_cstr(&linktarget), path)) < 0)
   git_error_set(GIT_ERROR_OS, "could not create symlink %s", path);
 } else {
  error = git_futils_fake_symlink(git_buf_cstr(&linktarget), path);
 }

 if (!error) {
  data->perfdata.stat_calls++;

  if ((error = p_lstat(path, st)) < 0)
   git_error_set(GIT_ERROR_CHECKOUT, "could not stat symlink %s", path);

  st->st_mode = GIT_FILEMODE_LINK;
 }

 git_buf_dispose(&linktarget);

 return error;
}
