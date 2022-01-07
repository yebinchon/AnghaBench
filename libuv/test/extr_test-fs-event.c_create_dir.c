
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int ASSERT (int) ;
 int UV_EEXIST ;
 int uv_fs_mkdir (int *,int *,char const*,int,int *) ;
 int uv_fs_req_cleanup (int *) ;

__attribute__((used)) static void create_dir(const char* name) {
  int r;
  uv_fs_t req;
  r = uv_fs_mkdir(((void*)0), &req, name, 0755, ((void*)0));
  ASSERT(r == 0 || r == UV_EEXIST);
  uv_fs_req_cleanup(&req);
}
