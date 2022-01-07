
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int ssize_t ;


 scalar_t__ mkdtemp (char*) ;

__attribute__((used)) static ssize_t uv__fs_mkdtemp(uv_fs_t* req) {
  return mkdtemp((char*) req->path) ? 0 : -1;
}
