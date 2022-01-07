
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_fs_event_t ;


 int ASSERT (int) ;
 int UV_CHANGE ;
 int close_cb ;
 int fs_event ;
 int fs_event_cb_called ;
 scalar_t__ strcmp (char const*,char*) ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_fs_event_stop (int *) ;

__attribute__((used)) static void fs_event_cb_dir(uv_fs_event_t* handle, const char* filename,
  int events, int status) {
  ++fs_event_cb_called;
  ASSERT(handle == &fs_event);
  ASSERT(status == 0);
  ASSERT(events == UV_CHANGE);

  ASSERT(strcmp(filename, "file1") == 0);



  ASSERT(0 == uv_fs_event_stop(handle));
  uv_close((uv_handle_t*)handle, close_cb);
}
