
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef int storage ;


 int uv_buf_init (char*,int) ;

__attribute__((used)) static void alloc_cb(uv_handle_t* handle,
                     size_t suggested_size,
                     uv_buf_t* buf) {
  static char storage[1024];
  *buf = uv_buf_init(storage, sizeof(storage));
}
