
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stat_t ;
typedef int uv_fs_poll_t ;


 int ASSERT (int) ;

__attribute__((used)) static void poll_cb_fail(uv_fs_poll_t* handle,
                         int status,
                         const uv_stat_t* prev,
                         const uv_stat_t* curr) {
  ASSERT(0 && "fail_cb called");
}
