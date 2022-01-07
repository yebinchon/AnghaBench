
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int overlapped; } ;
struct TYPE_12__ {TYPE_2__ io; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
struct TYPE_14__ {char* path; char* filew; char* short_filew; scalar_t__ dir_handle; char* buffer; char* dirw; int req_pending; TYPE_4__ req; TYPE_1__* loop; int cb; } ;
typedef TYPE_5__ uv_fs_event_t ;
typedef int uv_fs_event_cb ;
typedef char WCHAR ;
typedef int ULONG_PTR ;
struct TYPE_10__ {int iocp; } ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int CP_UTF8 ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int,int *,int ,int,int *) ;
 int * CreateIoCompletionPort (scalar_t__,int ,int ,int ) ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_LIST_DIRECTORY ;
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
 int GetFileAttributesW (char*) ;
 int GetLastError () ;
 int GetLongPathNameW (char*,char*,int) ;
 scalar_t__ GetShortPathNameW (char*,char*,int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,char*,int) ;
 int OPEN_EXISTING ;
 int ReadDirectoryChangesW (scalar_t__,char*,int,int ,int,int *,int *,int *) ;
 int TRUE ;
 int UV_EINVAL ;
 unsigned int UV_FS_EVENT_RECURSIVE ;
 int assert (int ) ;
 int memset (int *,int ,int) ;
 int uv__free (char*) ;
 int uv__handle_start (TYPE_5__*) ;
 int uv__handle_stop (TYPE_5__*) ;
 scalar_t__ uv__is_active (TYPE_5__*) ;
 scalar_t__ uv__malloc (int) ;
 char* uv__strdup (char const*) ;
 int uv_directory_watcher_buffer_size ;
 int uv_fatal_error (int ,char*) ;
 scalar_t__ uv_split_path (char*,char**,char**) ;
 int uv_translate_sys_error (int) ;

int uv_fs_event_start(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* path,
                      unsigned int flags) {
  int name_size, is_path_dir, size;
  DWORD attr, last_error;
  WCHAR* dir = ((void*)0), *dir_to_watch, *pathw = ((void*)0);
  WCHAR short_path_buffer[MAX_PATH];
  WCHAR* short_path, *long_path;

  if (uv__is_active(handle))
    return UV_EINVAL;

  handle->cb = cb;
  handle->path = uv__strdup(path);
  if (!handle->path) {
    uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  uv__handle_start(handle);



  name_size = MultiByteToWideChar(CP_UTF8, 0, path, -1, ((void*)0), 0) *
              sizeof(WCHAR);
  pathw = (WCHAR*)uv__malloc(name_size);
  if (!pathw) {
    uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  if (!MultiByteToWideChar(CP_UTF8,
                           0,
                           path,
                           -1,
                           pathw,
                           name_size / sizeof(WCHAR))) {
    return uv_translate_sys_error(GetLastError());
  }


  attr = GetFileAttributesW(pathw);
  if (attr == INVALID_FILE_ATTRIBUTES) {
    last_error = GetLastError();
    goto error;
  }

  is_path_dir = (attr & FILE_ATTRIBUTE_DIRECTORY) ? 1 : 0;

  if (is_path_dir) {



    size = GetLongPathNameW(pathw, ((void*)0), 0);

    if (size) {
      long_path = (WCHAR*)uv__malloc(size * sizeof(WCHAR));
      if (!long_path) {
        uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
      }

      size = GetLongPathNameW(pathw, long_path, size);
      if (size) {
        long_path[size] = '\0';
      } else {
        uv__free(long_path);
        long_path = ((void*)0);
      }

      if (long_path) {
        uv__free(pathw);
        pathw = long_path;
      }
    }

    dir_to_watch = pathw;
  } else {






    if (GetShortPathNameW(pathw,
                          short_path_buffer,
                          ARRAY_SIZE(short_path_buffer))) {
      short_path = short_path_buffer;
    } else {
      short_path = ((void*)0);
    }

    if (uv_split_path(pathw, &dir, &handle->filew) != 0) {
      last_error = GetLastError();
      goto error;
    }

    if (uv_split_path(short_path, ((void*)0), &handle->short_filew) != 0) {
      last_error = GetLastError();
      goto error;
    }

    dir_to_watch = dir;
    uv__free(pathw);
    pathw = ((void*)0);
  }

  handle->dir_handle = CreateFileW(dir_to_watch,
                                   FILE_LIST_DIRECTORY,
                                   FILE_SHARE_READ | FILE_SHARE_DELETE |
                                     FILE_SHARE_WRITE,
                                   ((void*)0),
                                   OPEN_EXISTING,
                                   FILE_FLAG_BACKUP_SEMANTICS |
                                     FILE_FLAG_OVERLAPPED,
                                   ((void*)0));

  if (dir) {
    uv__free(dir);
    dir = ((void*)0);
  }

  if (handle->dir_handle == INVALID_HANDLE_VALUE) {
    last_error = GetLastError();
    goto error;
  }

  if (CreateIoCompletionPort(handle->dir_handle,
                             handle->loop->iocp,
                             (ULONG_PTR)handle,
                             0) == ((void*)0)) {
    last_error = GetLastError();
    goto error;
  }

  if (!handle->buffer) {
    handle->buffer = (char*)uv__malloc(uv_directory_watcher_buffer_size);
  }
  if (!handle->buffer) {
    uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  memset(&(handle->req.u.io.overlapped), 0,
         sizeof(handle->req.u.io.overlapped));

  if (!ReadDirectoryChangesW(handle->dir_handle,
                             handle->buffer,
                             uv_directory_watcher_buffer_size,
                             (flags & UV_FS_EVENT_RECURSIVE) ? TRUE : FALSE,
                             FILE_NOTIFY_CHANGE_FILE_NAME |
                               FILE_NOTIFY_CHANGE_DIR_NAME |
                               FILE_NOTIFY_CHANGE_ATTRIBUTES |
                               FILE_NOTIFY_CHANGE_SIZE |
                               FILE_NOTIFY_CHANGE_LAST_WRITE |
                               FILE_NOTIFY_CHANGE_LAST_ACCESS |
                               FILE_NOTIFY_CHANGE_CREATION |
                               FILE_NOTIFY_CHANGE_SECURITY,
                             ((void*)0),
                             &handle->req.u.io.overlapped,
                             ((void*)0))) {
    last_error = GetLastError();
    goto error;
  }

  assert(is_path_dir ? pathw != ((void*)0) : pathw == ((void*)0));
  handle->dirw = pathw;
  handle->req_pending = 1;
  return 0;

error:
  if (handle->path) {
    uv__free(handle->path);
    handle->path = ((void*)0);
  }

  if (handle->filew) {
    uv__free(handle->filew);
    handle->filew = ((void*)0);
  }

  if (handle->short_filew) {
    uv__free(handle->short_filew);
    handle->short_filew = ((void*)0);
  }

  uv__free(pathw);

  if (handle->dir_handle != INVALID_HANDLE_VALUE) {
    CloseHandle(handle->dir_handle);
    handle->dir_handle = INVALID_HANDLE_VALUE;
  }

  if (handle->buffer) {
    uv__free(handle->buffer);
    handle->buffer = ((void*)0);
  }

  if (uv__is_active(handle))
    uv__handle_stop(handle);

  return uv_translate_sys_error(last_error);
}
