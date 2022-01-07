
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ result; int new_path; int path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef scalar_t__ uv_file ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; size_t st_size; int st_mode; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;


 int FICLONE ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int UV_ENOSYS ;
 int UV_FS_COPYFILE_EXCL ;
 int UV_FS_COPYFILE_FICLONE ;
 int UV_FS_COPYFILE_FICLONE_FORCE ;
 int UV__ERR (int) ;
 int errno ;
 int fchmod (scalar_t__,int ) ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 scalar_t__ ioctl (scalar_t__,int ,scalar_t__) ;
 int uv__close_nocheckstdio (scalar_t__) ;
 scalar_t__ uv_fs_open (int *,TYPE_1__*,int ,int,int ,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 int uv_fs_sendfile (int *,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,size_t,int *) ;
 int uv_fs_unlink (int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static ssize_t uv__fs_copyfile(uv_fs_t* req) {
  uv_fs_t fs_req;
  uv_file srcfd;
  uv_file dstfd;
  struct stat src_statsbuf;
  struct stat dst_statsbuf;
  int dst_flags;
  int result;
  int err;
  size_t bytes_to_send;
  int64_t in_offset;
  ssize_t bytes_written;

  dstfd = -1;
  err = 0;


  srcfd = uv_fs_open(((void*)0), &fs_req, req->path, O_RDONLY, 0, ((void*)0));
  uv_fs_req_cleanup(&fs_req);

  if (srcfd < 0)
    return srcfd;


  if (fstat(srcfd, &src_statsbuf)) {
    err = UV__ERR(errno);
    goto out;
  }

  dst_flags = O_WRONLY | O_CREAT | O_TRUNC;

  if (req->flags & UV_FS_COPYFILE_EXCL)
    dst_flags |= O_EXCL;


  dstfd = uv_fs_open(((void*)0),
                     &fs_req,
                     req->new_path,
                     dst_flags,
                     src_statsbuf.st_mode,
                     ((void*)0));
  uv_fs_req_cleanup(&fs_req);

  if (dstfd < 0) {
    err = dstfd;
    goto out;
  }


  if (fstat(dstfd, &dst_statsbuf)) {
    err = UV__ERR(errno);
    goto out;
  }


  if (src_statsbuf.st_dev == dst_statsbuf.st_dev &&
      src_statsbuf.st_ino == dst_statsbuf.st_ino) {
    goto out;
  }

  if (fchmod(dstfd, src_statsbuf.st_mode) == -1) {
    err = UV__ERR(errno);
    goto out;
  }
  if (req->flags & UV_FS_COPYFILE_FICLONE_FORCE) {
    err = UV_ENOSYS;
    goto out;
  }


  bytes_to_send = src_statsbuf.st_size;
  in_offset = 0;
  while (bytes_to_send != 0) {
    uv_fs_sendfile(((void*)0), &fs_req, dstfd, srcfd, in_offset, bytes_to_send, ((void*)0));
    bytes_written = fs_req.result;
    uv_fs_req_cleanup(&fs_req);

    if (bytes_written < 0) {
      err = bytes_written;
      break;
    }

    bytes_to_send -= bytes_written;
    in_offset += bytes_written;
  }

out:
  if (err < 0)
    result = err;
  else
    result = 0;


  err = uv__close_nocheckstdio(srcfd);


  if (err != 0 && result == 0)
    result = err;


  if (dstfd >= 0) {
    err = uv__close_nocheckstdio(dstfd);


    if (err != 0 && result == 0)
      result = err;


    if (result != 0) {
      uv_fs_unlink(((void*)0), &fs_req, req->new_path, ((void*)0));

      uv_fs_req_cleanup(&fs_req);
    }
  }

  if (result == 0)
    return 0;

  errno = UV__ERR(result);
  return -1;
}
