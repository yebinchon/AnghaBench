
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pathw; } ;
struct TYPE_7__ {int new_pathw; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_3__ file; TYPE_2__ fs; } ;
typedef TYPE_4__ uv_fs_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateHardLinkW (int ,int ,int *) ;
 int GetLastError () ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int ) ;

__attribute__((used)) static void fs__link(uv_fs_t* req) {
  DWORD r = CreateHardLinkW(req->fs.info.new_pathw, req->file.pathw, ((void*)0));
  if (r == 0) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
  } else {
    req->result = 0;
  }
}
