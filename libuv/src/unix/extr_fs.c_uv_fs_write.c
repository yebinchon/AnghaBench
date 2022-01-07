
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {unsigned int nbufs; int off; int * bufs; int * bufsml; int file; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;
typedef int uv_buf_t ;
typedef int int64_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int INIT (int ) ;
 int POST ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int WRITE ;
 int memcpy (int *,int const*,unsigned int) ;
 int * uv__malloc (unsigned int) ;

int uv_fs_write(uv_loop_t* loop,
                uv_fs_t* req,
                uv_file file,
                const uv_buf_t bufs[],
                unsigned int nbufs,
                int64_t off,
                uv_fs_cb cb) {
  INIT(WRITE);

  if (bufs == ((void*)0) || nbufs == 0)
    return UV_EINVAL;

  req->file = file;

  req->nbufs = nbufs;
  req->bufs = req->bufsml;
  if (nbufs > ARRAY_SIZE(req->bufsml))
    req->bufs = uv__malloc(nbufs * sizeof(*bufs));

  if (req->bufs == ((void*)0))
    return UV_ENOMEM;

  memcpy(req->bufs, bufs, nbufs * sizeof(*bufs));

  req->off = off;
  POST;
}
