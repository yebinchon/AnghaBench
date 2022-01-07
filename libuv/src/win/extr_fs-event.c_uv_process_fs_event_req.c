
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ InternalHigh; } ;
struct TYPE_18__ {TYPE_1__ overlapped; } ;
struct TYPE_19__ {TYPE_2__ io; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ uv_req_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_21__ {int req_pending; int flags; int buffer; char* filew; char* short_filew; int (* cb ) (TYPE_5__*,char*,int ,int ) ;scalar_t__ dirw; } ;
typedef TYPE_5__ uv_fs_event_t ;
typedef char WCHAR ;
struct TYPE_22__ {char* FileName; int FileNameLength; int Action; int NextEntryOffset; } ;
typedef TYPE_6__ FILE_NOTIFY_INFORMATION ;
typedef int DWORD ;


 int ERROR_OUTOFMEMORY ;





 int GET_REQ_ERROR (TYPE_4__*) ;
 int GetLongPathNameW (char*,char*,int) ;
 scalar_t__ REQ_SUCCESS (TYPE_4__*) ;
 int UV_CHANGE ;
 scalar_t__ UV_FS_EVENT_REQ ;
 int UV_HANDLE_CLOSING ;
 int UV_RENAME ;
 int _snwprintf (char*,int,char*,scalar_t__,int,char*) ;
 int assert (int) ;
 scalar_t__ file_info_cmp (char*,char*,int) ;
 int stub1 (TYPE_5__*,char*,int ,int ) ;
 int stub2 (TYPE_5__*,char*,int ,int ) ;
 int stub3 (TYPE_5__*,char*,int ,int ) ;
 int stub4 (TYPE_5__*,char*,int ,int ) ;
 int uv__convert_utf16_to_utf8 (char*,int,char**) ;
 int uv__free (char*) ;
 int uv__is_active (TYPE_5__*) ;
 scalar_t__ uv__malloc (int) ;
 int uv_fatal_error (int ,char*) ;
 int uv_fs_event_queue_readdirchanges (int *,TYPE_5__*) ;
 int uv_relative_path (char*,scalar_t__,char**) ;
 int uv_translate_sys_error (int) ;
 int uv_want_endgame (int *,int *) ;
 int wcslen (scalar_t__) ;

void uv_process_fs_event_req(uv_loop_t* loop, uv_req_t* req,
    uv_fs_event_t* handle) {
  FILE_NOTIFY_INFORMATION* file_info;
  int err, sizew, size;
  char* filename = ((void*)0);
  WCHAR* filenamew = ((void*)0);
  WCHAR* long_filenamew = ((void*)0);
  DWORD offset = 0;

  assert(req->type == UV_FS_EVENT_REQ);
  assert(handle->req_pending);
  handle->req_pending = 0;





  if (!uv__is_active(handle)) {
    if (handle->flags & UV_HANDLE_CLOSING) {
      uv_want_endgame(loop, (uv_handle_t*) handle);
    }
    return;
  }

  file_info = (FILE_NOTIFY_INFORMATION*)(handle->buffer + offset);

  if (REQ_SUCCESS(req)) {
    if (req->u.io.overlapped.InternalHigh > 0) {
      do {
        file_info = (FILE_NOTIFY_INFORMATION*)((char*)file_info + offset);
        assert(!filename);
        assert(!filenamew);
        assert(!long_filenamew);





        if (handle->dirw ||
            file_info_cmp(handle->filew,
                          file_info->FileName,
                          file_info->FileNameLength) == 0 ||
            file_info_cmp(handle->short_filew,
                          file_info->FileName,
                          file_info->FileNameLength) == 0) {

          if (handle->dirw) {






            if (file_info->Action != 130 &&
              file_info->Action != 128) {

              size = wcslen(handle->dirw) +
                file_info->FileNameLength / sizeof(WCHAR) + 2;

              filenamew = (WCHAR*)uv__malloc(size * sizeof(WCHAR));
              if (!filenamew) {
                uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
              }

              _snwprintf(filenamew, size, L"%s\\%.*s", handle->dirw,
                file_info->FileNameLength / (DWORD)sizeof(WCHAR),
                file_info->FileName);

              filenamew[size - 1] = L'\0';


              size = GetLongPathNameW(filenamew, ((void*)0), 0);

              if (size) {
                long_filenamew = (WCHAR*)uv__malloc(size * sizeof(WCHAR));
                if (!long_filenamew) {
                  uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
                }

                size = GetLongPathNameW(filenamew, long_filenamew, size);
                if (size) {
                  long_filenamew[size] = '\0';
                } else {
                  uv__free(long_filenamew);
                  long_filenamew = ((void*)0);
                }
              }

              uv__free(filenamew);

              if (long_filenamew) {

                uv_relative_path(long_filenamew,
                                 handle->dirw,
                                 &filenamew);
                uv__free(long_filenamew);
                long_filenamew = filenamew;
                sizew = -1;
              } else {

                filenamew = file_info->FileName;
                sizew = file_info->FileNameLength / sizeof(WCHAR);
              }
            } else {





              filenamew = file_info->FileName;
              sizew = file_info->FileNameLength / sizeof(WCHAR);
            }
          } else {

            filenamew = handle->filew;
            sizew = -1;
          }


          uv__convert_utf16_to_utf8(filenamew, sizew, &filename);

          switch (file_info->Action) {
            case 132:
            case 130:
            case 128:
            case 129:
              handle->cb(handle, filename, UV_RENAME, 0);
              break;

            case 131:
              handle->cb(handle, filename, UV_CHANGE, 0);
              break;
          }

          uv__free(filename);
          filename = ((void*)0);
          uv__free(long_filenamew);
          long_filenamew = ((void*)0);
          filenamew = ((void*)0);
        }

        offset = file_info->NextEntryOffset;
      } while (offset && !(handle->flags & UV_HANDLE_CLOSING));
    } else {
      handle->cb(handle, ((void*)0), UV_CHANGE, 0);
    }
  } else {
    err = GET_REQ_ERROR(req);
    handle->cb(handle, ((void*)0), 0, uv_translate_sys_error(err));
  }

  if (!(handle->flags & UV_HANDLE_CLOSING)) {
    uv_fs_event_queue_readdirchanges(loop, handle);
  } else {
    uv_want_endgame(loop, (uv_handle_t*)handle);
  }
}
