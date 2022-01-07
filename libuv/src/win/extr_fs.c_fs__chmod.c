
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mode; } ;
struct TYPE_9__ {TYPE_2__ info; } ;
struct TYPE_7__ {int pathw; } ;
struct TYPE_10__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;


 int SET_REQ_RESULT (TYPE_4__*,int) ;
 int _wchmod (int ,int ) ;

__attribute__((used)) static void fs__chmod(uv_fs_t* req) {
  int result = _wchmod(req->file.pathw, req->fs.info.mode);
  SET_REQ_RESULT(req, result);
}
