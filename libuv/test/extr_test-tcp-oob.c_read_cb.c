
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_os_fd_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;
typedef int lbuf ;


 int ASSERT (int) ;
 int MSG_OOB ;
 int idle ;
 int idle_cb ;
 int recv (int ,char*,int,int ) ;
 scalar_t__ uv_fileno (int *,int *) ;
 scalar_t__ uv_idle_start (int *,int ) ;

__attribute__((used)) static void read_cb(uv_stream_t* handle, ssize_t nread, const uv_buf_t* buf) {



  uv_os_fd_t fd;

  ASSERT(nread >= 0);
  ASSERT(0 == uv_fileno((uv_handle_t*)handle, &fd));
  ASSERT(0 == uv_idle_start(&idle, idle_cb));







}
