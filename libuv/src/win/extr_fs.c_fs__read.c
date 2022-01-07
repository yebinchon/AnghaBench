
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int offset; unsigned int nbufs; TYPE_2__* bufs; } ;
struct TYPE_20__ {TYPE_3__ info; } ;
struct TYPE_17__ {int fd; } ;
struct TYPE_21__ {TYPE_4__ fs; TYPE_1__ file; } ;
typedef TYPE_5__ uv_fs_t ;
struct uv__fd_info_s {int dummy; } ;
typedef int int64_t ;
struct TYPE_23__ {int HighPart; int LowPart; scalar_t__ QuadPart; } ;
struct TYPE_22__ {int OffsetHigh; int Offset; } ;
struct TYPE_18__ {int len; int base; } ;
typedef TYPE_6__ OVERLAPPED ;
typedef TYPE_7__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_HANDLE_EOF ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ReadFile (scalar_t__,int ,int ,scalar_t__*,TYPE_6__*) ;
 int SET_REQ_RESULT (TYPE_5__*,scalar_t__) ;
 int SET_REQ_WIN32_ERROR (TYPE_5__*,scalar_t__) ;
 scalar_t__ SetFilePointerEx (scalar_t__,TYPE_7__,TYPE_7__*,int ) ;
 int VERIFY_FD (int,TYPE_5__*) ;
 int fs__read_filemap (TYPE_5__*,struct uv__fd_info_s*) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ uv__fd_hash_get (int,struct uv__fd_info_s*) ;
 scalar_t__ uv__get_osfhandle (int) ;

void fs__read(uv_fs_t* req) {
  int fd = req->file.fd;
  int64_t offset = req->fs.info.offset;
  HANDLE handle;
  OVERLAPPED overlapped, *overlapped_ptr;
  LARGE_INTEGER offset_;
  DWORD bytes;
  DWORD error;
  int result;
  unsigned int index;
  LARGE_INTEGER original_position;
  LARGE_INTEGER zero_offset;
  int restore_position;
  struct uv__fd_info_s fd_info;

  VERIFY_FD(fd, req);

  if (uv__fd_hash_get(fd, &fd_info)) {
    fs__read_filemap(req, &fd_info);
    return;
  }

  zero_offset.QuadPart = 0;
  restore_position = 0;
  handle = uv__get_osfhandle(fd);

  if (handle == INVALID_HANDLE_VALUE) {
    SET_REQ_WIN32_ERROR(req, ERROR_INVALID_HANDLE);
    return;
  }

  if (offset != -1) {
    memset(&overlapped, 0, sizeof overlapped);
    overlapped_ptr = &overlapped;
    if (SetFilePointerEx(handle, zero_offset, &original_position,
                         FILE_CURRENT)) {
      restore_position = 1;
    }
  } else {
    overlapped_ptr = ((void*)0);
  }

  index = 0;
  bytes = 0;
  do {
    DWORD incremental_bytes;

    if (offset != -1) {
      offset_.QuadPart = offset + bytes;
      overlapped.Offset = offset_.LowPart;
      overlapped.OffsetHigh = offset_.HighPart;
    }

    result = ReadFile(handle,
                      req->fs.info.bufs[index].base,
                      req->fs.info.bufs[index].len,
                      &incremental_bytes,
                      overlapped_ptr);
    bytes += incremental_bytes;
    ++index;
  } while (result && index < req->fs.info.nbufs);

  if (restore_position)
    SetFilePointerEx(handle, original_position, ((void*)0), FILE_BEGIN);

  if (result || bytes > 0) {
    SET_REQ_RESULT(req, bytes);
  } else {
    error = GetLastError();
    if (error == ERROR_HANDLE_EOF) {
      SET_REQ_RESULT(req, bytes);
    } else {
      SET_REQ_WIN32_ERROR(req, error);
    }
  }
}
