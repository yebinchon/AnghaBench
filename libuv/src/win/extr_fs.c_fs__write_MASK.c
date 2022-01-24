#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int offset; unsigned int nbufs; TYPE_2__* bufs; } ;
struct TYPE_20__ {TYPE_3__ info; } ;
struct TYPE_17__ {int fd; } ;
struct TYPE_21__ {TYPE_4__ fs; TYPE_1__ file; } ;
typedef  TYPE_5__ uv_fs_t ;
struct uv__fd_info_s {int dummy; } ;
typedef  int int64_t ;
struct TYPE_23__ {int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; scalar_t__ QuadPart; } ;
struct TYPE_22__ {int /*<<< orphan*/  OffsetHigh; int /*<<< orphan*/  Offset; } ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_6__ OVERLAPPED ;
typedef  TYPE_7__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_7__,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_5__*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__,struct uv__fd_info_s*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,struct uv__fd_info_s*) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(uv_fs_t* req) {
  int fd = req->file.fd;
  int64_t offset = req->fs.info.offset;
  HANDLE handle;
  OVERLAPPED overlapped, *overlapped_ptr;
  LARGE_INTEGER offset_;
  DWORD bytes;
  int result;
  unsigned int index;
  LARGE_INTEGER original_position;
  LARGE_INTEGER zero_offset;
  int restore_position;
  struct uv__fd_info_s fd_info;

  FUNC4(fd, req);

  zero_offset.QuadPart = 0;
  restore_position = 0;
  handle = FUNC9(fd);
  if (handle == INVALID_HANDLE_VALUE) {
    FUNC2(req, ERROR_INVALID_HANDLE);
    return;
  }

  if (FUNC8(fd, &fd_info)) {
    FUNC6(req, handle, &fd_info);
    return;
  }

  if (offset != -1) {
    FUNC7(&overlapped, 0, sizeof overlapped);
    overlapped_ptr = &overlapped;
    if (FUNC3(handle, zero_offset, &original_position,
                         FILE_CURRENT)) {
      restore_position = 1;
    }
  } else {
    overlapped_ptr = NULL;
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

    result = FUNC5(handle,
                       req->fs.info.bufs[index].base,
                       req->fs.info.bufs[index].len,
                       &incremental_bytes,
                       overlapped_ptr);
    bytes += incremental_bytes;
    ++index;
  } while (result && index < req->fs.info.nbufs);

  if (restore_position)
    FUNC3(handle, original_position, NULL, FILE_BEGIN);

  if (result || bytes > 0) {
    FUNC1(req, bytes);
  } else {
    FUNC2(req, FUNC0());
  }
}