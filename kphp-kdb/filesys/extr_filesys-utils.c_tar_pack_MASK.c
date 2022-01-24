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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  gzFile ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int TAR_PACK_ERR_DUP ; 
 int TAR_PACK_ERR_OPEN ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char const* const,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const* const,char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ FUNC13 (char const* const,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

int FUNC15 (const char *const tar_filename, const char *const path, int compression_level) {
  char mode[8];
  if (compression_level >= 1 && compression_level <= 9) {
    FUNC12 (mode, "wb%d", compression_level);
  } else {
    FUNC14 (mode, "wb");
  }

  int fd = FUNC10 (tar_filename, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
  if (fd < 0) { return TAR_PACK_ERR_OPEN; }
  int dd = FUNC2 (fd);
  if (dd < 0) {
    FUNC0 (FUNC1 (fd) >= 0);
    return TAR_PACK_ERR_DUP;
  }

  gzFile f = FUNC7 (dd, mode);
  struct stat b;
  if (FUNC13 (path, &b)) {
    return -1;
  }
  dyn_mark_t mrk;
  FUNC3 (mrk);
  int r = FUNC11 (f, path, "", &b);
  FUNC4 (mrk);
  char buf[1024];
  FUNC9 (buf, 0 , 1024);
  FUNC0 (FUNC8 (f, buf, 1024) == 1024);
  FUNC0 (FUNC6 (f) == Z_OK);
  FUNC0 (FUNC5 (fd) >= 0);
  FUNC0 (FUNC1 (fd) >= 0);
  return r;
}