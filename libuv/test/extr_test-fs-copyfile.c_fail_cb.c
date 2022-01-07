
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int FATAL (char*) ;

__attribute__((used)) static void fail_cb(uv_fs_t* req) {
  FATAL("fail_cb should not have been called");
}
