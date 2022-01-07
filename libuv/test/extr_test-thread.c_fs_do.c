
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_req {int handle; int loop; } ;


 int ASSERT (int) ;
 int fs_cb ;
 int uv_fs_stat (int ,int *,char*,int ) ;

__attribute__((used)) static void fs_do(struct fs_req* req) {
  int r;

  r = uv_fs_stat(req->loop, &req->handle, ".", fs_cb);
  ASSERT(r == 0);
}
