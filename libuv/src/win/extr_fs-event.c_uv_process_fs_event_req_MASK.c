#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ InternalHigh; } ;
struct TYPE_18__ {TYPE_1__ overlapped; } ;
struct TYPE_19__ {TYPE_2__ io; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_3__ u; } ;
typedef  TYPE_4__ uv_req_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_21__ {int req_pending; int flags; int buffer; char* filew; char* short_filew; int /*<<< orphan*/  (* cb ) (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ dirw; } ;
typedef  TYPE_5__ uv_fs_event_t ;
typedef  char WCHAR ;
struct TYPE_22__ {char* FileName; int FileNameLength; int Action; int NextEntryOffset; } ;
typedef  TYPE_6__ FILE_NOTIFY_INFORMATION ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
#define  FILE_ACTION_ADDED 132 
#define  FILE_ACTION_MODIFIED 131 
#define  FILE_ACTION_REMOVED 130 
#define  FILE_ACTION_RENAMED_NEW_NAME 129 
#define  FILE_ACTION_RENAMED_OLD_NAME 128 
 int FUNC0 (TYPE_4__*) ; 
 int FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  UV_CHANGE ; 
 scalar_t__ UV_FS_EVENT_REQ ; 
 int UV_HANDLE_CLOSING ; 
 int /*<<< orphan*/  UV_RENAME ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (scalar_t__) ; 

void FUNC20(uv_loop_t* loop, uv_req_t* req,
    uv_fs_event_t* handle) {
  FILE_NOTIFY_INFORMATION* file_info;
  int err, sizew, size;
  char* filename = NULL;
  WCHAR* filenamew = NULL;
  WCHAR* long_filenamew = NULL;
  DWORD offset = 0;

  FUNC4(req->type == UV_FS_EVENT_REQ);
  FUNC4(handle->req_pending);
  handle->req_pending = 0;

  /* Don't report any callbacks if:
   * - We're closing, just push the handle onto the endgame queue
   * - We are not active, just ignore the callback
   */
  if (!FUNC12(handle)) {
    if (handle->flags & UV_HANDLE_CLOSING) {
      FUNC18(loop, (uv_handle_t*) handle);
    }
    return;
  }

  file_info = (FILE_NOTIFY_INFORMATION*)(handle->buffer + offset);

  if (FUNC2(req)) {
    if (req->u.io.overlapped.InternalHigh > 0) {
      do {
        file_info = (FILE_NOTIFY_INFORMATION*)((char*)file_info + offset);
        FUNC4(!filename);
        FUNC4(!filenamew);
        FUNC4(!long_filenamew);

        /*
         * Fire the event only if we were asked to watch a directory,
         * or if the filename filter matches.
         */
        if (handle->dirw ||
            FUNC5(handle->filew,
                          file_info->FileName,
                          file_info->FileNameLength) == 0 ||
            FUNC5(handle->short_filew,
                          file_info->FileName,
                          file_info->FileNameLength) == 0) {

          if (handle->dirw) {
            /*
             * We attempt to resolve the long form of the file name explicitly.
             * We only do this for file names that might still exist on disk.
             * If this fails, we use the name given by ReadDirectoryChangesW.
             * This may be the long form or the 8.3 short name in some cases.
             */
            if (file_info->Action != FILE_ACTION_REMOVED &&
              file_info->Action != FILE_ACTION_RENAMED_OLD_NAME) {
              /* Construct a full path to the file. */
              size = FUNC19(handle->dirw) +
                file_info->FileNameLength / sizeof(WCHAR) + 2;

              filenamew = (WCHAR*)FUNC13(size * sizeof(WCHAR));
              if (!filenamew) {
                FUNC14(ERROR_OUTOFMEMORY, "uv__malloc");
              }

              FUNC3(filenamew, size, L"%s\\%.*s", handle->dirw,
                file_info->FileNameLength / (DWORD)sizeof(WCHAR),
                file_info->FileName);

              filenamew[size - 1] = L'\0';

              /* Convert to long name. */
              size = FUNC1(filenamew, NULL, 0);

              if (size) {
                long_filenamew = (WCHAR*)FUNC13(size * sizeof(WCHAR));
                if (!long_filenamew) {
                  FUNC14(ERROR_OUTOFMEMORY, "uv__malloc");
                }

                size = FUNC1(filenamew, long_filenamew, size);
                if (size) {
                  long_filenamew[size] = '\0';
                } else {
                  FUNC11(long_filenamew);
                  long_filenamew = NULL;
                }
              }

              FUNC11(filenamew);

              if (long_filenamew) {
                /* Get the file name out of the long path. */
                FUNC16(long_filenamew,
                                 handle->dirw,
                                 &filenamew);
                FUNC11(long_filenamew);
                long_filenamew = filenamew;
                sizew = -1;
              } else {
                /* We couldn't get the long filename, use the one reported. */
                filenamew = file_info->FileName;
                sizew = file_info->FileNameLength / sizeof(WCHAR);
              }
            } else {
              /*
               * Removed or renamed events cannot be resolved to the long form.
               * We therefore use the name given by ReadDirectoryChangesW.
               * This may be the long form or the 8.3 short name in some cases.
               */
              filenamew = file_info->FileName;
              sizew = file_info->FileNameLength / sizeof(WCHAR);
            }
          } else {
            /* We already have the long name of the file, so just use it. */
            filenamew = handle->filew;
            sizew = -1;
          }

          /* Convert the filename to utf8. */
          FUNC10(filenamew, sizew, &filename);

          switch (file_info->Action) {
            case FILE_ACTION_ADDED:
            case FILE_ACTION_REMOVED:
            case FILE_ACTION_RENAMED_OLD_NAME:
            case FILE_ACTION_RENAMED_NEW_NAME:
              handle->cb(handle, filename, UV_RENAME, 0);
              break;

            case FILE_ACTION_MODIFIED:
              handle->cb(handle, filename, UV_CHANGE, 0);
              break;
          }

          FUNC11(filename);
          filename = NULL;
          FUNC11(long_filenamew);
          long_filenamew = NULL;
          filenamew = NULL;
        }

        offset = file_info->NextEntryOffset;
      } while (offset && !(handle->flags & UV_HANDLE_CLOSING));
    } else {
      handle->cb(handle, NULL, UV_CHANGE, 0);
    }
  } else {
    err = FUNC0(req);
    handle->cb(handle, NULL, 0, FUNC17(err));
  }

  if (!(handle->flags & UV_HANDLE_CLOSING)) {
    FUNC15(loop, handle);
  } else {
    FUNC18(loop, (uv_handle_t*)handle);
  }
}