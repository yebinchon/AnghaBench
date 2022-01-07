
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int fs__sync_impl (int *) ;

__attribute__((used)) static void fs__fsync(uv_fs_t* req) {
  fs__sync_impl(req);
}
