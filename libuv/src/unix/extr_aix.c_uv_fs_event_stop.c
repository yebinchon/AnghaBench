
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {TYPE_4__ event_watcher; int * path; int * dir_filename; int loop; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int UV_ENOSYS ;
 int uv__close (int) ;
 int uv__free (int *) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_close (int ,TYPE_4__*) ;
 int uv__is_active (TYPE_1__*) ;
 scalar_t__ uv__path_is_a_directory (int *) ;

int uv_fs_event_stop(uv_fs_event_t* handle) {
  return UV_ENOSYS;

}
