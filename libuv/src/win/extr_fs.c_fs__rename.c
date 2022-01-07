
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int new_pathw; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int pathw; } ;
struct TYPE_11__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;


 int GetLastError () ;
 int MOVEFILE_REPLACE_EXISTING ;
 int MoveFileExW (int ,int ,int ) ;
 int SET_REQ_RESULT (TYPE_4__*,int ) ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int ) ;

__attribute__((used)) static void fs__rename(uv_fs_t* req) {
  if (!MoveFileExW(req->file.pathw, req->fs.info.new_pathw, MOVEFILE_REPLACE_EXISTING)) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }

  SET_REQ_RESULT(req, 0);
}
