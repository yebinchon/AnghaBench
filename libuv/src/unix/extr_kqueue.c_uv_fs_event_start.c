
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fd; } ;
struct TYPE_8__ {unsigned int cf_flags; TYPE_4__ event_watcher; int loop; int * path; scalar_t__ realpath_len; int * realpath; int * cf_cb; int cb; } ;
typedef TYPE_1__ uv_fs_event_t ;
typedef int uv_fs_event_cb ;
struct stat {int st_mode; } ;


 int O_RDONLY ;
 int POLLIN ;
 int S_IFDIR ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (int *,int ) ;
 int uv__close_nocheckstdio (int) ;
 int uv__free (int *) ;
 int uv__fs_event ;
 int uv__fsevents_init (TYPE_1__*) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__has_forked_with_cfrunloop ;
 int uv__io_init (TYPE_4__*,int ,int) ;
 int uv__io_start (int ,TYPE_4__*,int ) ;
 scalar_t__ uv__is_active (TYPE_1__*) ;
 int * uv__strdup (char const*) ;

int uv_fs_event_start(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* path,
                      unsigned int flags) {
  int fd;




  if (uv__is_active(handle))
    return UV_EINVAL;

  handle->cb = cb;
  handle->path = uv__strdup(path);
  if (handle->path == ((void*)0))
    return UV_ENOMEM;


  fd = open(handle->path, O_RDONLY);
  if (fd == -1) {
    uv__free(handle->path);
    handle->path = ((void*)0);
    return UV__ERR(errno);
  }
  uv__handle_start(handle);
  uv__io_init(&handle->event_watcher, uv__fs_event, fd);
  uv__io_start(handle->loop, &handle->event_watcher, POLLIN);

  return 0;
}
