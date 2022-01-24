#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file_info {char* filename; int fd; int flags; char* filepath; int mtime; scalar_t__ fsize; int /*<<< orphan*/  head_data; } ;

/* Variables and functions */
 scalar_t__ BSIZE ; 
 int FIF_DEST ; 
 int FIF_ZIPPED ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int MAX_DIRNAME_LEN ; 
 int MAX_DIR_FILES ; 
 int MAX_FPATH_LEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct file_info* dst_files ; 
 int dst_fnum ; 
 char* dstdir ; 
 int /*<<< orphan*/  FUNC1 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct file_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct file_info *FUNC11 (struct file_info *FS) {
  struct file_info *FI = dst_files + dst_fnum;
  int dirname_len = FUNC8 (dstdir), len = FUNC8 (FS->filename);
  int i, utime;

  FUNC0 (dst_fnum < MAX_DIR_FILES && dirname_len > 1 && dirname_len < MAX_DIRNAME_LEN);

  FUNC5 (FI, 0, sizeof (*FI));

  FI->fd = -1;
  FI->flags = FIF_DEST | (FS->flags & FIF_ZIPPED);

  if (dstdir[dirname_len - 1] == '/') {
    dirname_len--;
  }

  FUNC4 (FI->filepath, dstdir, dirname_len);
  FI->filepath[dirname_len] = '/';
  FI->filename = FI->filepath + dirname_len + 1;

  FUNC4 (FI->filepath + dirname_len + 1, FS->filename, len);
  FUNC0 (dirname_len + len + 13 < MAX_FPATH_LEN);

  utime = FUNC9 (0);
  for (i = 0; i < 8; i++) {
    FUNC7 (FI->filename + len, ".%d", utime + i);
    FI->fd = FUNC6 (FI->filepath, O_CREAT | O_EXCL | O_RDWR, 0640);
    if (FI->fd >= 0) {
      break;
    }
  }

  if (FI->fd < 0) {
    FUNC2 ("cannot create file %s: %m\n", FI->filepath);
    return 0;
  }

  FI->mtime = utime;
  FUNC0 (FUNC3 (FI->fd, F_WRLCK) > 0);

  if (FUNC10 (FI->fd, FS->head_data, BSIZE) < BSIZE) {
    FUNC2 ("cannot write to %s: %m\n", FI->filepath);
    FUNC1 (FI);
    return 0;
  }

  FI->fsize = BSIZE;
  dst_fnum++;

  return FI;
}