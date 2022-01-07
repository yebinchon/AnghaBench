
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;
typedef int uv_file ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int O_RDWR ;
 int uv_buf_init (char*,int) ;
 int uv_fs_close (int *,int *,int,int *) ;
 int uv_fs_open (int *,int *,char const*,int ,int ,int *) ;
 int uv_fs_req_cleanup (int *) ;
 int uv_fs_write (int *,int *,int,int *,int,int,int *) ;

__attribute__((used)) static void touch_file(const char* name) {
  int r;
  uv_file file;
  uv_fs_t req;
  uv_buf_t buf;

  r = uv_fs_open(((void*)0), &req, name, O_RDWR, 0, ((void*)0));
  ASSERT(r >= 0);
  file = r;
  uv_fs_req_cleanup(&req);

  buf = uv_buf_init("foo", 4);
  r = uv_fs_write(((void*)0), &req, file, &buf, 1, -1, ((void*)0));
  ASSERT(r >= 0);
  uv_fs_req_cleanup(&req);

  r = uv_fs_close(((void*)0), &req, file, ((void*)0));
  ASSERT(r == 0);
  uv_fs_req_cleanup(&req);
}
