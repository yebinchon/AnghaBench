#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ offset; } ;
struct TYPE_15__ {TYPE_2__ info; } ;
struct TYPE_13__ {int fd; } ;
struct TYPE_18__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_6__ uv_fs_t ;
struct TYPE_17__ {scalar_t__ QuadPart; } ;
struct TYPE_16__ {scalar_t__ QuadPart; int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct uv__fd_info_s {void* mapping; int flags; TYPE_5__ current_pos; TYPE_4__ size; scalar_t__ is_directory; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {TYPE_4__ EndOfFile; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  void* HANDLE ;
typedef  TYPE_7__ FILE_END_OF_FILE_INFORMATION ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FileEndOfFileInformation ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int UV_FS_O_RDONLY ; 
 int UV_FS_O_RDWR ; 
 int UV_FS_O_WRONLY ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct uv__fd_info_s*) ; 
 scalar_t__ FUNC10 (int,struct uv__fd_info_s*) ; 
 void* FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(uv_fs_t* req) {
  int fd = req->file.fd;
  HANDLE handle;
  struct uv__fd_info_s fd_info = { 0 };
  NTSTATUS status;
  IO_STATUS_BLOCK io_status;
  FILE_END_OF_FILE_INFORMATION eof_info;

  FUNC6(fd, req);

  handle = FUNC11(fd);

  if (FUNC10(fd, &fd_info)) {
    if (fd_info.is_directory) {
      FUNC5(req, ERROR_ACCESS_DENIED);
      return;
    }

    if (fd_info.mapping != INVALID_HANDLE_VALUE) {
      FUNC0(fd_info.mapping);
    }
  }

  eof_info.EndOfFile.QuadPart = req->fs.info.offset;

  status = FUNC7(handle,
                                 &io_status,
                                 &eof_info,
                                 sizeof eof_info,
                                 FileEndOfFileInformation);

  if (FUNC3(status)) {
    FUNC4(req, 0);
  } else {
    FUNC5(req, FUNC8(status));

    if (fd_info.flags) {
      FUNC0(handle);
      fd_info.mapping = INVALID_HANDLE_VALUE;
      fd_info.size.QuadPart = 0;
      fd_info.current_pos.QuadPart = 0;
      FUNC9(fd, &fd_info);
      return;
    }
  }

  if (fd_info.flags) {
    fd_info.size = eof_info.EndOfFile;

    if (fd_info.size.QuadPart == 0) {
      fd_info.mapping = INVALID_HANDLE_VALUE;
    } else {
      DWORD flProtect = (fd_info.flags & (UV_FS_O_RDONLY | UV_FS_O_WRONLY |
        UV_FS_O_RDWR)) == UV_FS_O_RDONLY ? PAGE_READONLY : PAGE_READWRITE;
      fd_info.mapping = FUNC1(handle,
                                          NULL,
                                          flProtect,
                                          fd_info.size.HighPart,
                                          fd_info.size.LowPart,
                                          NULL);
      if (fd_info.mapping == NULL) {
        FUNC5(req, FUNC2());
        FUNC0(handle);
        fd_info.mapping = INVALID_HANDLE_VALUE;
        fd_info.size.QuadPart = 0;
        fd_info.current_pos.QuadPart = 0;
        FUNC9(fd, &fd_info);
        return;
      }
    }

    FUNC9(fd, &fd_info);
  }
}