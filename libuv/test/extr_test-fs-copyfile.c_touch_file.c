
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;
typedef int uv_file ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int uv_buf_init (char*,int) ;
 int uv_fs_close (int *,int *,int,int *) ;
 int uv_fs_open (int *,int *,char const*,int,int,int *) ;
 int uv_fs_req_cleanup (int *) ;
 int uv_fs_write (int *,int *,int,int *,int,unsigned int,int *) ;

__attribute__((used)) static void touch_file(const char* name, unsigned int size) {
  uv_file file;
  uv_fs_t req;
  uv_buf_t buf;
  int r;
  unsigned int i;

  r = uv_fs_open(((void*)0), &req, name, O_WRONLY | O_CREAT | O_TRUNC,
                 S_IWUSR | S_IRUSR, ((void*)0));
  uv_fs_req_cleanup(&req);
  ASSERT(r >= 0);
  file = r;

  buf = uv_buf_init("a", 1);


  for (i = 0; i < size; i++) {
    r = uv_fs_write(((void*)0), &req, file, &buf, 1, i, ((void*)0));
    uv_fs_req_cleanup(&req);
    ASSERT(r >= 0);
  }

  r = uv_fs_close(((void*)0), &req, file, ((void*)0));
  uv_fs_req_cleanup(&req);
  ASSERT(r == 0);
}
