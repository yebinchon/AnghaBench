
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_fs_event_t ;


 int ASSERT (int) ;
 scalar_t__ fs_event_cb_called ;
 scalar_t__ strcmp (char const*,char*) ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void fs_event_cb_file_current_dir(uv_fs_event_t* handle,
                                         const char* filename,
                                         int events,
                                         int status) {
  ASSERT(fs_event_cb_called == 0);
  ++fs_event_cb_called;
  ASSERT(status == 0);

  ASSERT(strcmp(filename, "watch_file") == 0);



  uv_close((uv_handle_t*)handle, ((void*)0));
}
