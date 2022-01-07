
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_7__ {int dir_handle; } ;
typedef TYPE_2__ uv_dir_t ;


 int FindClose (int ) ;
 int SET_REQ_RESULT (TYPE_1__*,int ) ;
 int uv__free (TYPE_2__*) ;

void fs__closedir(uv_fs_t* req) {
  uv_dir_t* dir;

  dir = req->ptr;
  FindClose(dir->dir_handle);
  uv__free(req->ptr);
  SET_REQ_RESULT(req, 0);
}
