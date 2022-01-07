
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pathw; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
typedef TYPE_2__ uv_fs_t ;


 int SET_REQ_RESULT (TYPE_2__*,int) ;
 int _wrmdir (int ) ;

void fs__rmdir(uv_fs_t* req) {
  int result = _wrmdir(req->file.pathw);
  SET_REQ_RESULT(req, result);
}
