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
struct file_info {int flags; char* filename; scalar_t__ fsize; int /*<<< orphan*/  filepath; struct file_info* peer; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FIF_ERROR ; 
 int FIF_RDONLY ; 
 int FIF_ZIPPED ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (struct file_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct file_info*,struct file_info*) ; 
 struct file_info* FUNC3 (struct file_info*) ; 
 struct file_info* dst_files ; 
 int dst_fnum ; 
 int /*<<< orphan*/  FUNC4 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 scalar_t__ logs_reopen_cnt ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int matches ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int const) ; 
 scalar_t__ FUNC9 (struct file_info*,struct file_info*) ; 
 scalar_t__ FUNC10 (struct file_info*,struct file_info*) ; 
 scalar_t__ remove_useless_not_zipped_backups ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ sigusr1_cnt ; 
 struct file_info* src_files ; 
 int src_fnum ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16 (void) {
  struct file_info *FC, *FS, *FD, *FB, *FE;
  int i, j;

  matches = 0;

  for (i = 0, FS = FC = src_files; i < src_fnum; i++, FS++) {

    if (logs_reopen_cnt != sigusr1_cnt) {
      FUNC11 ();
    }

    if (FS->flags & FIF_ERROR) {
      continue;
    }
    FB = FE = NULL;
    for (j = 0, FD = dst_files; j < dst_fnum; j++, FD++) {
      if (FD->flags & FIF_ERROR) {
        continue;
      }

      if (FB == NULL && FE == NULL && FUNC0 (FD, FIF_ZIPPED | FIF_RDONLY) && !(FS->flags & FIF_ZIPPED) && FUNC9 (FS, FD)) {
        FE = FD;
      }

      if (FD->peer) {
        continue;
      }

      if (FUNC10 (FS, FD) && (!FB || FUNC2 (FD, FB) > 0)) {
        FB = FD;
      }
    }

    if (FB == NULL) {
      if (FE != NULL) {
        FUNC6 ("skip creating new uncompressed backup for file '%s', since there is zipped backup '%s'\n", FS->filename, FE->filename);
        continue;
      }
      FB = FUNC3 (FS);
      if (!FB) {
        FUNC6 ("warning: unable to create peer for %s\n", FS->filepath);
        continue;
      }
    }
    matches++;
    FS->peer = FB;
    FB->peer = FC;
    FUNC1 (FUNC7 (FS->fd, FB->fsize, SEEK_SET) == FB->fsize);
    FUNC15 (2, "found peer %s %lld -> %s %lld\n", FS->filepath, FS->fsize, FB->filepath, FB->fsize);
    *FC++ = *FS;
  }

  src_fnum = matches;

  for (j = 0, FD = dst_files; j < dst_fnum; j++, FD++) {
    if (!FD->peer) {
      if (remove_useless_not_zipped_backups && !(FD->flags & FIF_ZIPPED)) {
        for (i = 0, FS = src_files; i < src_fnum; i++, FS++) {
          if (FS->peer && FUNC0 (FS, FIF_ZIPPED | FIF_RDONLY) && FS->fsize == FS->peer->fsize && FUNC0 (FS->peer, FIF_ZIPPED | FIF_RDONLY)) {
            char *s2 = FD->filename, *s1 = FS->filename;
            const int l2 = FUNC13 (s2), l1 = FUNC13 (s1);
            if (l2 == l1 - 3 + 11 && !FUNC8 (s1, s2, l1 - 3) && !FUNC12 (s1 + l1 - 3, ".bz")) {
              break;
            }
          }
        }
        if (i < src_fnum) {
          FUNC6 ("unlink useless backup '%s'\n", FD->filepath);
          if (FUNC14 (FD->filepath) < 0) {
            FUNC6 ("unlink (\"%s\") failed. %m\n", FD->filepath);
          }
        }
      }
      FUNC5 (FD);
    } else {
      FUNC4 (FD);
    }
  }

  for (i = 0, FS = src_files; i < src_fnum; i++, FS++) {
    FUNC4 (FS);
  }

  return matches;
}