
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mode_t ;
typedef int info ;
struct TYPE_10__ {int size; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_11__ {char const* to_root; int flags; int mkdir_flags; TYPE_1__ to; int from_prefix; int dirmode; } ;
typedef TYPE_2__ cp_r_info ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CPDIR_CHMOD_DIRS ;
 int GIT_CPDIR_CREATE_EMPTY_DIRS ;
 int GIT_MKDIR_CHMOD ;
 int GIT_MKDIR_CHMOD_PATH ;
 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int _cp_r_callback (TYPE_2__*,TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_init (TYPE_1__*,int ) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,char const*,char*) ;
 int memset (TYPE_2__*,int ,int) ;

int git_futils_cp_r(
 const char *from,
 const char *to,
 uint32_t flags,
 mode_t dirmode)
{
 int error;
 git_buf path = GIT_BUF_INIT;
 cp_r_info info;

 if (git_buf_joinpath(&path, from, "") < 0)
  return -1;

 memset(&info, 0, sizeof(info));
 info.to_root = to;
 info.flags = flags;
 info.dirmode = dirmode;
 info.from_prefix = path.size;
 git_buf_init(&info.to, 0);


 if ((flags & GIT_CPDIR_CREATE_EMPTY_DIRS) == 0) {



  info.mkdir_flags = GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST;
  if ((flags & GIT_CPDIR_CHMOD_DIRS) != 0)
   info.mkdir_flags |= GIT_MKDIR_CHMOD_PATH;
 } else {

  info.mkdir_flags =
   ((flags & GIT_CPDIR_CHMOD_DIRS) != 0) ? GIT_MKDIR_CHMOD : 0;
 }

 error = _cp_r_callback(&info, &path);

 git_buf_dispose(&path);
 git_buf_dispose(&info.to);

 return error;
}
