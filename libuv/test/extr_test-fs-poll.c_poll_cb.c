
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero_statbuf ;
typedef int uv_stat_t ;
typedef int uv_handle_t ;
typedef int uv_fs_poll_t ;


 int ASSERT (int) ;
 int FIXTURE ;
 int UV_ENOENT ;
 int close_cb ;
 int memcmp (int const*,int *,int) ;
 int memset (int *,int ,int) ;
 int poll_cb_called ;
 int poll_handle ;
 int remove (int ) ;
 int timer_cb ;
 int timer_handle ;
 int touch_file (int ) ;
 int uv_close (int *,int ) ;
 int uv_is_active (int *) ;
 int uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void poll_cb(uv_fs_poll_t* handle,
                    int status,
                    const uv_stat_t* prev,
                    const uv_stat_t* curr) {
  uv_stat_t zero_statbuf;

  memset(&zero_statbuf, 0, sizeof(zero_statbuf));

  ASSERT(handle == &poll_handle);
  ASSERT(1 == uv_is_active((uv_handle_t*) handle));
  ASSERT(prev != ((void*)0));
  ASSERT(curr != ((void*)0));

  switch (poll_cb_called++) {
  case 0:
    ASSERT(status == UV_ENOENT);
    ASSERT(0 == memcmp(prev, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 == memcmp(curr, &zero_statbuf, sizeof(zero_statbuf)));
    touch_file(FIXTURE);
    break;

  case 1:
    ASSERT(status == 0);
    ASSERT(0 == memcmp(prev, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 != memcmp(curr, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 == uv_timer_start(&timer_handle, timer_cb, 20, 0));
    break;

  case 2:
    ASSERT(status == 0);
    ASSERT(0 != memcmp(prev, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 != memcmp(curr, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 == uv_timer_start(&timer_handle, timer_cb, 200, 0));
    break;

  case 3:
    ASSERT(status == 0);
    ASSERT(0 != memcmp(prev, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 != memcmp(curr, &zero_statbuf, sizeof(zero_statbuf)));
    remove(FIXTURE);
    break;

  case 4:
    ASSERT(status == UV_ENOENT);
    ASSERT(0 != memcmp(prev, &zero_statbuf, sizeof(zero_statbuf)));
    ASSERT(0 == memcmp(curr, &zero_statbuf, sizeof(zero_statbuf)));
    uv_close((uv_handle_t*)handle, close_cb);
    break;

  default:
    ASSERT(0);
  }
}
