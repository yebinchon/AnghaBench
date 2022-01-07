
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_event_t ;


 int ASSERT (int) ;

__attribute__((used)) static void fs_event_fail(uv_fs_event_t* handle,
                          const char* filename,
                          int events,
                          int status) {
  ASSERT(0 && "should never be called");
}
