
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; int path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int ssize_t ;


 int ENOMEM ;
 int errno ;
 char* realpath (int ,char*) ;
 int uv__free (char*) ;
 int uv__fs_pathmax_size (int ) ;
 char* uv__malloc (int) ;

__attribute__((used)) static ssize_t uv__fs_realpath(uv_fs_t* req) {
  char* buf;






  ssize_t len;

  len = uv__fs_pathmax_size(req->path);
  buf = uv__malloc(len + 1);

  if (buf == ((void*)0)) {
    errno = ENOMEM;
    return -1;
  }

  if (realpath(req->path, buf) == ((void*)0)) {
    uv__free(buf);
    return -1;
  }


  req->ptr = buf;

  return 0;
}
