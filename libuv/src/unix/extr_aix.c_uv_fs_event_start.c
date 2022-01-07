
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zt ;
struct TYPE_4__ {int event_watcher; int loop; int * dir_filename; int cb; int path; } ;
typedef TYPE_1__ uv_fs_event_t ;
typedef int uv_fs_event_cb ;
struct timeval {int dummy; } ;
typedef int readlink_cwd ;
typedef int fd_set ;
typedef int cwd ;
typedef int absolute_path ;


 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int PATH_MAX ;
 int POLLIN ;
 int UV_ENOENT ;
 int UV_ENOSYS ;
 scalar_t__ errno ;
 scalar_t__ getpid () ;
 int memset (struct timeval*,int ,int) ;
 int readlink (char*,char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int snprintf (char*,int,char*,...) ;
 int uv__ahafs_event ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__io_init (int *,int ,int) ;
 int uv__io_start (int ,int *,int ) ;
 scalar_t__ uv__is_ahafs_mounted () ;
 int uv__setup_ahafs (char const*,int*) ;
 int uv__strdup (char const*) ;
 int uv__strscpy (char*,char const*,int) ;

int uv_fs_event_start(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* filename,
                      unsigned int flags) {
  return UV_ENOSYS;

}
