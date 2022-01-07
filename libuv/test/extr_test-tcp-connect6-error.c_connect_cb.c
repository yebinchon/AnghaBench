
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;


 int ASSERT (int ) ;
 int connect_cb_called ;

__attribute__((used)) static void connect_cb(uv_connect_t* handle, int status) {
  ASSERT(handle != ((void*)0));
  connect_cb_called++;
}
