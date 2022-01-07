
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_9__ {TYPE_2__ io_watcher; } ;
typedef TYPE_3__ uv_udp_t ;
struct TYPE_7__ {int fd; } ;
struct TYPE_10__ {TYPE_1__ io_watcher; } ;
typedef TYPE_4__ uv_stream_t ;
struct TYPE_11__ {int type; } ;
typedef TYPE_5__ uv_handle_t ;






__attribute__((used)) static int uv__handle_fd(uv_handle_t* handle) {
  switch (handle->type) {
    case 130:
    case 129:
      return ((uv_stream_t*) handle)->io_watcher.fd;

    case 128:
      return ((uv_udp_t*) handle)->io_watcher.fd;

    default:
      return -1;
  }
}
