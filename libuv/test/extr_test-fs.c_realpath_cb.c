
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fs_type; scalar_t__ result; int ptr; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int test_file_abs_buf ;


 int ASSERT (int) ;
 int PATHMAX ;
 scalar_t__ UV_ENOSYS ;
 scalar_t__ UV_FS_REALPATH ;
 int realpath_cb_count ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ stricmp (int ,char*) ;
 int uv_cwd (char*,size_t*) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void realpath_cb(uv_fs_t* req) {
  char test_file_abs_buf[PATHMAX];
  size_t test_file_abs_size = sizeof(test_file_abs_buf);
  ASSERT(req->fs_type == UV_FS_REALPATH);
  ASSERT(req->result == 0);

  uv_cwd(test_file_abs_buf, &test_file_abs_size);




  strcat(test_file_abs_buf, "/test_file");
  ASSERT(strcmp(req->ptr, test_file_abs_buf) == 0);

  realpath_cb_count++;
  uv_fs_req_cleanup(req);
}
