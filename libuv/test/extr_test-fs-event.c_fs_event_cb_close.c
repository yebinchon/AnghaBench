
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_fs_event_t ;


 int ASSERT (int) ;
 int close_cb ;
 int fs_event_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void fs_event_cb_close(uv_fs_event_t* handle,
                              const char* filename,
                              int events,
                              int status) {
  ASSERT(status == 0);

  ASSERT(fs_event_cb_called < 3);
  ++fs_event_cb_called;

  if (fs_event_cb_called == 3) {
    uv_close((uv_handle_t*) handle, close_cb);
  }
}
