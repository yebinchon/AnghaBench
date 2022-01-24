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
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  overlapped; } ;
struct TYPE_12__ {TYPE_2__ io; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
struct TYPE_14__ {char* path; char* filew; char* short_filew; scalar_t__ dir_handle; char* buffer; char* dirw; int req_pending; TYPE_4__ req; TYPE_1__* loop; int /*<<< orphan*/  cb; } ;
typedef  TYPE_5__ uv_fs_event_t ;
typedef  int /*<<< orphan*/  uv_fs_event_cb ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_10__ {int /*<<< orphan*/  iocp; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FILE_LIST_DIRECTORY ; 
 int FILE_NOTIFY_CHANGE_ATTRIBUTES ; 
 int FILE_NOTIFY_CHANGE_CREATION ; 
 int FILE_NOTIFY_CHANGE_DIR_NAME ; 
 int FILE_NOTIFY_CHANGE_FILE_NAME ; 
 int FILE_NOTIFY_CHANGE_LAST_ACCESS ; 
 int FILE_NOTIFY_CHANGE_LAST_WRITE ; 
 int FILE_NOTIFY_CHANGE_SECURITY ; 
 int FILE_NOTIFY_CHANGE_SIZE ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int UV_EINVAL ; 
 unsigned int UV_FS_EVENT_RECURSIVE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 scalar_t__ FUNC15 (TYPE_5__*) ; 
 scalar_t__ FUNC16 (int) ; 
 char* FUNC17 (char const*) ; 
 int uv_directory_watcher_buffer_size ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (char*,char**,char**) ; 
 int FUNC20 (int) ; 

int FUNC21(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* path,
                      unsigned int flags) {
  int name_size, is_path_dir, size;
  DWORD attr, last_error;
  WCHAR* dir = NULL, *dir_to_watch, *pathw = NULL;
  WCHAR short_path_buffer[MAX_PATH];
  WCHAR* short_path, *long_path;

  if (FUNC15(handle))
    return UV_EINVAL;

  handle->cb = cb;
  handle->path = FUNC17(path);
  if (!handle->path) {
    FUNC18(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  FUNC13(handle);

  /* Convert name to UTF16. */

  name_size = FUNC8(CP_UTF8, 0, path, -1, NULL, 0) *
              sizeof(WCHAR);
  pathw = (WCHAR*)FUNC16(name_size);
  if (!pathw) {
    FUNC18(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  if (!FUNC8(CP_UTF8,
                           0,
                           path,
                           -1,
                           pathw,
                           name_size / sizeof(WCHAR))) {
    return FUNC20(FUNC5());
  }

  /* Determine whether path is a file or a directory. */
  attr = FUNC4(pathw);
  if (attr == INVALID_FILE_ATTRIBUTES) {
    last_error = FUNC5();
    goto error;
  }

  is_path_dir = (attr & FILE_ATTRIBUTE_DIRECTORY) ? 1 : 0;

  if (is_path_dir) {
     /* path is a directory, so that's the directory that we will watch. */

    /* Convert to long path. */
    size = FUNC6(pathw, NULL, 0);

    if (size) {
      long_path = (WCHAR*)FUNC16(size * sizeof(WCHAR));
      if (!long_path) {
        FUNC18(ERROR_OUTOFMEMORY, "uv__malloc");
      }

      size = FUNC6(pathw, long_path, size);
      if (size) {
        long_path[size] = '\0';
      } else {
        FUNC12(long_path);
        long_path = NULL;
      }

      if (long_path) {
        FUNC12(pathw);
        pathw = long_path;
      }
    }

    dir_to_watch = pathw;
  } else {
    /*
     * path is a file.  So we split path into dir & file parts, and
     * watch the dir directory.
     */

    /* Convert to short path. */
    if (FUNC7(pathw,
                          short_path_buffer,
                          FUNC0(short_path_buffer))) {
      short_path = short_path_buffer;
    } else {
      short_path = NULL;
    }

    if (FUNC19(pathw, &dir, &handle->filew) != 0) {
      last_error = FUNC5();
      goto error;
    }

    if (FUNC19(short_path, NULL, &handle->short_filew) != 0) {
      last_error = FUNC5();
      goto error;
    }

    dir_to_watch = dir;
    FUNC12(pathw);
    pathw = NULL;
  }

  handle->dir_handle = FUNC2(dir_to_watch,
                                   FILE_LIST_DIRECTORY,
                                   FILE_SHARE_READ | FILE_SHARE_DELETE |
                                     FILE_SHARE_WRITE,
                                   NULL,
                                   OPEN_EXISTING,
                                   FILE_FLAG_BACKUP_SEMANTICS |
                                     FILE_FLAG_OVERLAPPED,
                                   NULL);

  if (dir) {
    FUNC12(dir);
    dir = NULL;
  }

  if (handle->dir_handle == INVALID_HANDLE_VALUE) {
    last_error = FUNC5();
    goto error;
  }

  if (FUNC3(handle->dir_handle,
                             handle->loop->iocp,
                             (ULONG_PTR)handle,
                             0) == NULL) {
    last_error = FUNC5();
    goto error;
  }

  if (!handle->buffer) {
    handle->buffer = (char*)FUNC16(uv_directory_watcher_buffer_size);
  }
  if (!handle->buffer) {
    FUNC18(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  FUNC11(&(handle->req.u.io.overlapped), 0,
         sizeof(handle->req.u.io.overlapped));

  if (!FUNC9(handle->dir_handle,
                             handle->buffer,
                             uv_directory_watcher_buffer_size,
                             (flags & UV_FS_EVENT_RECURSIVE) ? TRUE : FALSE,
                             FILE_NOTIFY_CHANGE_FILE_NAME      |
                               FILE_NOTIFY_CHANGE_DIR_NAME     |
                               FILE_NOTIFY_CHANGE_ATTRIBUTES   |
                               FILE_NOTIFY_CHANGE_SIZE         |
                               FILE_NOTIFY_CHANGE_LAST_WRITE   |
                               FILE_NOTIFY_CHANGE_LAST_ACCESS  |
                               FILE_NOTIFY_CHANGE_CREATION     |
                               FILE_NOTIFY_CHANGE_SECURITY,
                             NULL,
                             &handle->req.u.io.overlapped,
                             NULL)) {
    last_error = FUNC5();
    goto error;
  }

  FUNC10(is_path_dir ? pathw != NULL : pathw == NULL);
  handle->dirw = pathw;
  handle->req_pending = 1;
  return 0;

error:
  if (handle->path) {
    FUNC12(handle->path);
    handle->path = NULL;
  }

  if (handle->filew) {
    FUNC12(handle->filew);
    handle->filew = NULL;
  }

  if (handle->short_filew) {
    FUNC12(handle->short_filew);
    handle->short_filew = NULL;
  }

  FUNC12(pathw);

  if (handle->dir_handle != INVALID_HANDLE_VALUE) {
    FUNC1(handle->dir_handle);
    handle->dir_handle = INVALID_HANDLE_VALUE;
  }

  if (handle->buffer) {
    FUNC12(handle->buffer);
    handle->buffer = NULL;
  }

  if (FUNC15(handle))
    FUNC14(handle);

  return FUNC20(last_error);
}