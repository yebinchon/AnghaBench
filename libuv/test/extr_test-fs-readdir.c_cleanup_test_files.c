
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int uv_fs_req_cleanup (int *) ;
 int uv_fs_rmdir (int *,int *,char*,int *) ;
 int uv_fs_unlink (int *,int *,char*,int *) ;

__attribute__((used)) static void cleanup_test_files(void) {
  uv_fs_t req;

  uv_fs_unlink(((void*)0), &req, "test_dir/file1", ((void*)0));
  uv_fs_req_cleanup(&req);
  uv_fs_unlink(((void*)0), &req, "test_dir/file2", ((void*)0));
  uv_fs_req_cleanup(&req);
  uv_fs_rmdir(((void*)0), &req, "test_dir/test_subdir", ((void*)0));
  uv_fs_req_cleanup(&req);
  uv_fs_rmdir(((void*)0), &req, "test_dir", ((void*)0));
  uv_fs_req_cleanup(&req);
}
