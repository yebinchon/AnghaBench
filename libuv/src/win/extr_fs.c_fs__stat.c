
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pathw; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
typedef TYPE_2__ uv_fs_t ;


 int fs__stat_impl (TYPE_2__*,int ) ;
 int fs__stat_prepare_path (int ) ;

__attribute__((used)) static void fs__stat(uv_fs_t* req) {
  fs__stat_prepare_path(req->file.pathw);
  fs__stat_impl(req, 0);
}
