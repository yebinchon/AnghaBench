
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int ssize_t ;


 int F_FULLFSYNC ;
 int fcntl (int ,int) ;
 int fsync (int ) ;

__attribute__((used)) static ssize_t uv__fs_fsync(uv_fs_t* req) {
  return fsync(req->file);

}
