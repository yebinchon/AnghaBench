#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * pathw; } ;
struct TYPE_12__ {TYPE_1__ file; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int dwFileAttributes; } ;
struct TYPE_13__ {int FileAttributes; int /*<<< orphan*/  DeleteFile; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_3__ FILE_DISPOSITION_INFORMATION ;
typedef  TYPE_3__ FILE_BASIC_INFORMATION ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ BY_HANDLE_FILE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int DELETE ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_SYMLINK_NOT_SUPPORTED ; 
 int FILE_ATTRIBUTE_ARCHIVE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FILE_ATTRIBUTE_REPARSE_POINT ; 
 int FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_FLAG_OPEN_REPARSE_POINT ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FileBasicInformation ; 
 int /*<<< orphan*/  FileDispositionInformation ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_5__*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(uv_fs_t* req) {
  const WCHAR* pathw = req->file.pathw;
  HANDLE handle;
  BY_HANDLE_FILE_INFORMATION info;
  FILE_DISPOSITION_INFORMATION disposition;
  IO_STATUS_BLOCK iosb;
  NTSTATUS status;

  handle = FUNC1(pathw,
                       FILE_READ_ATTRIBUTES | FILE_WRITE_ATTRIBUTES | DELETE,
                       FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                       NULL,
                       OPEN_EXISTING,
                       FILE_FLAG_OPEN_REPARSE_POINT | FILE_FLAG_BACKUP_SEMANTICS,
                       NULL);

  if (handle == INVALID_HANDLE_VALUE) {
    FUNC6(req, FUNC3());
    return;
  }

  if (!FUNC2(handle, &info)) {
    FUNC6(req, FUNC3());
    FUNC0(handle);
    return;
  }

  if (info.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
    /* Do not allow deletion of directories, unless it is a symlink. When the
     * path refers to a non-symlink directory, report EPERM as mandated by
     * POSIX.1. */

    /* Check if it is a reparse point. If it's not, it's a normal directory. */
    if (!(info.dwFileAttributes & FILE_ATTRIBUTE_REPARSE_POINT)) {
      FUNC6(req, ERROR_ACCESS_DENIED);
      FUNC0(handle);
      return;
    }

    /* Read the reparse point and check if it is a valid symlink. If not, don't
     * unlink. */
    if (FUNC7(handle, NULL, NULL) < 0) {
      DWORD error = FUNC3();
      if (error == ERROR_SYMLINK_NOT_SUPPORTED)
        error = ERROR_ACCESS_DENIED;
      FUNC6(req, error);
      FUNC0(handle);
      return;
    }
  }

  if (info.dwFileAttributes & FILE_ATTRIBUTE_READONLY) {
    /* Remove read-only attribute */
    FILE_BASIC_INFORMATION basic = { 0 };

    basic.FileAttributes = (info.dwFileAttributes & ~FILE_ATTRIBUTE_READONLY) |
                           FILE_ATTRIBUTE_ARCHIVE;

    status = FUNC8(handle,
                                   &iosb,
                                   &basic,
                                   sizeof basic,
                                   FileBasicInformation);
    if (!FUNC4(status)) {
      FUNC6(req, FUNC9(status));
      FUNC0(handle);
      return;
    }
  }

  /* Try to set the delete flag. */
  disposition.DeleteFile = TRUE;
  status = FUNC8(handle,
                                 &iosb,
                                 &disposition,
                                 sizeof disposition,
                                 FileDispositionInformation);
  if (FUNC4(status)) {
    FUNC5(req);
  } else {
    FUNC6(req, FUNC9(status));
  }

  FUNC0(handle);
}