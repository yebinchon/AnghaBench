
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* ptr; int flags; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_13__ {int * name; int type; } ;
typedef TYPE_2__ uv_dirent_t ;
struct TYPE_16__ {int* cFileName; int dwFileAttributes; } ;
struct TYPE_14__ {int nentries; void* need_find_call; int dir_handle; TYPE_5__ find_data; TYPE_2__* dirents; } ;
typedef TYPE_3__ uv_dir_t ;
struct TYPE_15__ {int d_type; } ;
typedef TYPE_4__ uv__dirent_t ;
typedef int WCHAR ;
typedef TYPE_5__* PWIN32_FIND_DATAW ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 int FILE_ATTRIBUTE_DEVICE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 scalar_t__ FindNextFileW (int ,TYPE_5__*) ;
 scalar_t__ GetLastError () ;
 int SET_REQ_RESULT (TYPE_1__*,unsigned int) ;
 int SET_REQ_WIN32_ERROR (TYPE_1__*,scalar_t__) ;
 void* TRUE ;
 int UV_FS_FREE_PTR ;
 int UV__DT_CHAR ;
 int UV__DT_DIR ;
 int UV__DT_FILE ;
 int UV__DT_LINK ;
 int memset (TYPE_2__*,int ,int) ;
 int uv__convert_utf16_to_utf8 (int const*,int,char**) ;
 int uv__free (char*) ;
 int uv__fs_get_dirent_type (TYPE_4__*) ;

void fs__readdir(uv_fs_t* req) {
  uv_dir_t* dir;
  uv_dirent_t* dirents;
  uv__dirent_t dent;
  unsigned int dirent_idx;
  PWIN32_FIND_DATAW find_data;
  unsigned int i;
  int r;

  req->flags |= UV_FS_FREE_PTR;
  dir = req->ptr;
  dirents = dir->dirents;
  memset(dirents, 0, dir->nentries * sizeof(*dir->dirents));
  find_data = &dir->find_data;
  dirent_idx = 0;

  while (dirent_idx < dir->nentries) {
    if (dir->need_find_call && FindNextFileW(dir->dir_handle, find_data) == 0) {
      if (GetLastError() == ERROR_NO_MORE_FILES)
        break;
      goto error;
    }


    if (find_data->cFileName[0] == L'.' &&
        (find_data->cFileName[1] == L'\0' ||
        (find_data->cFileName[1] == L'.' &&
        find_data->cFileName[2] == L'\0'))) {
      dir->need_find_call = TRUE;
      continue;
    }

    r = uv__convert_utf16_to_utf8((const WCHAR*) &find_data->cFileName,
                                  -1,
                                  (char**) &dirents[dirent_idx].name);
    if (r != 0)
      goto error;


    if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) != 0)
      dent.d_type = UV__DT_DIR;
    else if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_REPARSE_POINT) != 0)
      dent.d_type = UV__DT_LINK;
    else if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_DEVICE) != 0)
      dent.d_type = UV__DT_CHAR;
    else
      dent.d_type = UV__DT_FILE;

    dirents[dirent_idx].type = uv__fs_get_dirent_type(&dent);
    dir->need_find_call = TRUE;
    ++dirent_idx;
  }

  SET_REQ_RESULT(req, dirent_idx);
  return;

error:
  SET_REQ_WIN32_ERROR(req, GetLastError());
  for (i = 0; i < dirent_idx; ++i) {
    uv__free((char*) dirents[i].name);
    dirents[i].name = ((void*)0);
  }
}
