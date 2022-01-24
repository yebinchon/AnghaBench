#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int mode; } ;
struct TYPE_14__ {TYPE_2__ info; } ;
struct TYPE_12__ {int fd; } ;
struct TYPE_15__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_4__ uv_fs_t ;
struct TYPE_16__ {int FileAttributes; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_5__ FILE_BASIC_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FILE_ATTRIBUTE_ARCHIVE ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FileBasicInformation ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_4__*) ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(uv_fs_t* req) {
  int fd = req->file.fd;
  int clear_archive_flag;
  HANDLE handle;
  NTSTATUS nt_status;
  IO_STATUS_BLOCK io_status;
  FILE_BASIC_INFORMATION file_info;

  FUNC6(fd, req);

  handle = FUNC3(FUNC10(fd), FILE_WRITE_ATTRIBUTES, 0, 0);
  if (handle == INVALID_HANDLE_VALUE) {
    FUNC5(req, FUNC1());
    return;
  }

  nt_status = FUNC7(handle,
                                      &io_status,
                                      &file_info,
                                      sizeof file_info,
                                      FileBasicInformation);

  if (!FUNC2(nt_status)) {
    FUNC5(req, FUNC9(nt_status));
    goto fchmod_cleanup;
  }

  /* Test if the Archive attribute is cleared */
  if ((file_info.FileAttributes & FILE_ATTRIBUTE_ARCHIVE) == 0) {
      /* Set Archive flag, otherwise setting or clearing the read-only
         flag will not work */
      file_info.FileAttributes |= FILE_ATTRIBUTE_ARCHIVE;
      nt_status = FUNC8(handle,
                                        &io_status,
                                        &file_info,
                                        sizeof file_info,
                                        FileBasicInformation);
      if (!FUNC2(nt_status)) {
        FUNC5(req, FUNC9(nt_status));
        goto fchmod_cleanup;
      }
      /* Remeber to clear the flag later on */
      clear_archive_flag = 1;
  } else {
      clear_archive_flag = 0;
  }

  if (req->fs.info.mode & _S_IWRITE) {
    file_info.FileAttributes &= ~FILE_ATTRIBUTE_READONLY;
  } else {
    file_info.FileAttributes |= FILE_ATTRIBUTE_READONLY;
  }

  nt_status = FUNC8(handle,
                                    &io_status,
                                    &file_info,
                                    sizeof file_info,
                                    FileBasicInformation);

  if (!FUNC2(nt_status)) {
    FUNC5(req, FUNC9(nt_status));
    goto fchmod_cleanup;
  }

  if (clear_archive_flag) {
      file_info.FileAttributes &= ~FILE_ATTRIBUTE_ARCHIVE;
      if (file_info.FileAttributes == 0) {
          file_info.FileAttributes = FILE_ATTRIBUTE_NORMAL;
      }
      nt_status = FUNC8(handle,
                                        &io_status,
                                        &file_info,
                                        sizeof file_info,
                                        FileBasicInformation);
      if (!FUNC2(nt_status)) {
        FUNC5(req, FUNC9(nt_status));
        goto fchmod_cleanup;
      }
  }

  FUNC4(req);
fchmod_cleanup:
  FUNC0(handle);
}