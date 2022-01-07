
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;
typedef int uv_file ;


 int ASSERT (int) ;
 int O_CREAT ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int uv_fs_close (int *,int *,int,int *) ;
 int uv_fs_open (int *,int *,char const*,int,int,int *) ;
 int uv_fs_req_cleanup (int *) ;

__attribute__((used)) static void create_file(const char* name) {
  int r;
  uv_file file;
  uv_fs_t req;

  r = uv_fs_open(((void*)0), &req, name, O_WRONLY | O_CREAT, S_IWUSR | S_IRUSR, ((void*)0));
  ASSERT(r >= 0);
  file = r;
  uv_fs_req_cleanup(&req);
  r = uv_fs_close(((void*)0), &req, file, ((void*)0));
  ASSERT(r == 0);
  uv_fs_req_cleanup(&req);
}
