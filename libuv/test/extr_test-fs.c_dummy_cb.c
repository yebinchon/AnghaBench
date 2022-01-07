
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int dummy_cb_count ;

__attribute__((used)) static void dummy_cb(uv_fs_t* req) {
  (void) req;
  dummy_cb_count++;
}
