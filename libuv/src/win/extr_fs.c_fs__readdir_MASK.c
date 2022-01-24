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
struct TYPE_12__ {TYPE_3__* ptr; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ uv_fs_t ;
struct TYPE_13__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ uv_dirent_t ;
struct TYPE_16__ {int* cFileName; int dwFileAttributes; } ;
struct TYPE_14__ {int nentries; void* need_find_call; int /*<<< orphan*/  dir_handle; TYPE_5__ find_data; TYPE_2__* dirents; } ;
typedef  TYPE_3__ uv_dir_t ;
struct TYPE_15__ {int /*<<< orphan*/  d_type; } ;
typedef  TYPE_4__ uv__dirent_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  TYPE_5__* PWIN32_FIND_DATAW ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int FILE_ATTRIBUTE_DEVICE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_REPARSE_POINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 void* TRUE ; 
 int /*<<< orphan*/  UV_FS_FREE_PTR ; 
 int /*<<< orphan*/  UV__DT_CHAR ; 
 int /*<<< orphan*/  UV__DT_DIR ; 
 int /*<<< orphan*/  UV__DT_FILE ; 
 int /*<<< orphan*/  UV__DT_LINK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

void FUNC8(uv_fs_t* req) {
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
  FUNC4(dirents, 0, dir->nentries * sizeof(*dir->dirents));
  find_data = &dir->find_data;
  dirent_idx = 0;

  while (dirent_idx < dir->nentries) {
    if (dir->need_find_call && FUNC0(dir->dir_handle, find_data) == 0) {
      if (FUNC1() == ERROR_NO_MORE_FILES)
        break;
      goto error;
    }

    /* Skip "." and ".." entries. */
    if (find_data->cFileName[0] == L'.' &&
        (find_data->cFileName[1] == L'\0' ||
        (find_data->cFileName[1] == L'.' &&
        find_data->cFileName[2] == L'\0'))) {
      dir->need_find_call = TRUE;
      continue;
    }

    r = FUNC5((const WCHAR*) &find_data->cFileName,
                                  -1,
                                  (char**) &dirents[dirent_idx].name);
    if (r != 0)
      goto error;

    /* Copy file type. */
    if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) != 0)
      dent.d_type = UV__DT_DIR;
    else if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_REPARSE_POINT) != 0)
      dent.d_type = UV__DT_LINK;
    else if ((find_data->dwFileAttributes & FILE_ATTRIBUTE_DEVICE) != 0)
      dent.d_type = UV__DT_CHAR;
    else
      dent.d_type = UV__DT_FILE;

    dirents[dirent_idx].type = FUNC7(&dent);
    dir->need_find_call = TRUE;
    ++dirent_idx;
  }

  FUNC2(req, dirent_idx);
  return;

error:
  FUNC3(req, FUNC1());
  for (i = 0; i < dirent_idx; ++i) {
    FUNC6((char*) dirents[i].name);
    dirents[i].name = NULL;
  }
}