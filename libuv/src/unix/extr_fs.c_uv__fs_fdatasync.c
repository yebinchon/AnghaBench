
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int ssize_t ;


 int fdatasync (int ) ;
 int fsync (int ) ;
 int uv__fs_fsync (TYPE_1__*) ;

__attribute__((used)) static ssize_t uv__fs_fdatasync(uv_fs_t* req) {

  return fdatasync(req->file);






}
