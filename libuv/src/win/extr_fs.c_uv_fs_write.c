
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_7__ {unsigned int nbufs; int offset; int * bufs; int * bufsml; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_6__ {int fd; } ;
struct TYPE_9__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;
typedef int uv_buf_t ;
typedef int int64_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int INIT (int ) ;
 int POST ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV_FS_WRITE ;
 int memcpy (int *,int const*,unsigned int) ;
 int * uv__malloc (unsigned int) ;

int uv_fs_write(uv_loop_t* loop,
                uv_fs_t* req,
                uv_file fd,
                const uv_buf_t bufs[],
                unsigned int nbufs,
                int64_t offset,
                uv_fs_cb cb) {
  INIT(UV_FS_WRITE);

  if (bufs == ((void*)0) || nbufs == 0)
    return UV_EINVAL;

  req->file.fd = fd;

  req->fs.info.nbufs = nbufs;
  req->fs.info.bufs = req->fs.info.bufsml;
  if (nbufs > ARRAY_SIZE(req->fs.info.bufsml))
    req->fs.info.bufs = uv__malloc(nbufs * sizeof(*bufs));

  if (req->fs.info.bufs == ((void*)0))
    return UV_ENOMEM;

  memcpy(req->fs.info.bufs, bufs, nbufs * sizeof(*bufs));

  req->fs.info.offset = offset;
  POST;
}
