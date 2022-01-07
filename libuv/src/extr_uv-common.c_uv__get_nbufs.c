
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int nbufs; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
struct TYPE_7__ {unsigned int nbufs; TYPE_2__ fs; } ;
typedef TYPE_3__ uv_fs_t ;



__attribute__((used)) static unsigned int* uv__get_nbufs(uv_fs_t* req) {



  return &req->nbufs;

}
