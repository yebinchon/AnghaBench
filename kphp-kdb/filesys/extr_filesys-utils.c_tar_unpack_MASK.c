#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uid_t ;
typedef  void* time_t ;
struct TYPE_4__ {struct tar_unpack_dir_mtime_entry** e; } ;
typedef  TYPE_1__ tar_unpack_dir_mtime_t ;
struct stat {int st_mode; int st_size; void* st_mtime; void* st_atime; void* st_gid; void* st_uid; } ;
struct tar_unpack_dir_mtime_entry {char* dirname; struct stat st; struct tar_unpack_dir_mtime_entry* next; } ;
typedef  int off_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  gzFile ;
typedef  void* gid_t ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int MAX_DIR_DEPTH ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int TAR_UNPACK_ERR_COPY_ATTRS ; 
 int TAR_UNPACK_ERR_MKDIR ; 
 int TAR_UNPACK_ERR_OPEN ; 
 int TAR_UNPACK_ERR_SYMLINK ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int FUNC15 (char*,int,int) ; 
 int FUNC16 (char*,int,char*,char const* const,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,char*,int,void*,void*,long long,unsigned int,char) ; 
 int FUNC24 (int,char*,int) ; 
 char* FUNC25 (int) ; 

int FUNC26 (int tar_gz_fd, const char *const path) {
  char full_filename[PATH_MAX], long_filename[PATH_MAX];
  int i, res = 0;
  dyn_mark_t mrk;
  FUNC4 (mrk);
  tar_unpack_dir_mtime_t M;
  FUNC22 (&M);
  gzFile f = FUNC8 (tar_gz_fd, "rb");
  char buf[512];
  int BUF_SIZE = 16 << 20;
  char *io_buff = FUNC25 (BUF_SIZE);
  FUNC2 (io_buff != NULL);
  int headers = 0;
  while (FUNC9 (f, buf, 512) == 512) {
    int longlink = 0, longname = 0;
    headers++;
    if (!FUNC20 (buf)) {
      break;
    }
    char tp = buf[156];
    off_t size = FUNC6 (buf, 124, 11);
    while (tp == 'K' || tp == 'L') {
      FUNC2 (!FUNC12 (buf, "././@LongLink", 13));
      int padded = (size + 511) & -512;
      if (tp == 'K') {
        longlink = 1;
        FUNC2 (padded == FUNC9 (f, io_buff, padded));
      } else if (tp == 'L') {
        longname = 1;
        FUNC2 (padded <= PATH_MAX);
        FUNC2 (padded == FUNC9 (f, long_filename, padded));
      }
      FUNC2 (FUNC9 (f, buf, 512) == 512);
      FUNC20 (buf);
      tp = buf[156];
      size = FUNC6 (buf, 124, 11);
    }

    mode_t mode = FUNC6 (buf, 100, 7);
    uid_t uid = FUNC6 (buf, 108, 7);
    gid_t gid = FUNC6 (buf, 116, 7);
    time_t mtime = FUNC6 (buf, 136, 11);
    char ch;
    if (!longname) {
      FUNC13 (long_filename, buf + 345, 512 - 345);
      if (long_filename[0]) {
        FUNC17 (long_filename, "/");
      }
      ch = buf[100];
      buf[100] = 0;
      FUNC17 (long_filename, buf);
      buf[100] = ch;
    }
    FUNC2 (FUNC16 (full_filename, PATH_MAX, "%s/%s", path, long_filename) < PATH_MAX);
    FUNC23 (2, "%s %07o %d %d %lld %u %c\n", full_filename, mode, uid, gid, (long long) size, (unsigned) mtime, tp);
    struct stat st;
    st.st_mode = mode;
    st.st_uid = uid;
    st.st_gid = gid;
    st.st_size = size;
    st.st_atime = st.st_mtime = mtime;
    int l = FUNC18 (full_filename);
    off_t k = 0;
    int fd = -1;
    switch (tp) {
      case '0':
        k = 0;
        fd = FUNC15 (full_filename, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, mode);
        if (fd < 0) {
          FUNC10 ("open (%s) failed. %m\n", full_filename);
          res = TAR_UNPACK_ERR_OPEN;
          goto exit;
        }
        while (k < size) {
          int o = size - k;
          if (o > BUF_SIZE) { o = BUF_SIZE; }
          int padded = (o + 511) & -512;
          FUNC2 (padded == FUNC9 (f, io_buff, padded));
          FUNC2 (FUNC24 (fd, io_buff, o) == o);
          k += padded;
        }
        FUNC2 (!FUNC3 (fd));
        if (FUNC11 (full_filename, &st) < 0) {
          res = TAR_UNPACK_ERR_COPY_ATTRS;
          goto exit;
        }
        break;
      case '2':
        FUNC2 (FUNC1 (mode));
        ch = buf[257];
        buf[257] = 0;
        char *oldpath = longlink ? io_buff : buf + 157;
        if (FUNC19 (oldpath, full_filename)) {
          FUNC10 ("symlink (%s, %s) fail. %m\n", oldpath, full_filename);
          res = TAR_UNPACK_ERR_SYMLINK;
          goto exit;
        }
        buf[257] = ch;
        break;
      case '5':
        FUNC2 (FUNC0 (mode));
        FUNC2 (l > 0 && full_filename[l-1] == '/');
        full_filename[l-1] = 0;
        long_filename[FUNC18 (long_filename) - 1] = 0;
        if (FUNC14 (full_filename, mode)) {
          FUNC10 ("mkdir (%s, %07o) fail. %m\n", full_filename, mode);
          res = TAR_UNPACK_ERR_MKDIR;
          goto exit;
        }
        FUNC21 (&M, long_filename, &st);
        break;
      default:
        FUNC10 ("unimplemented file type %c\n", tp);
        FUNC2 (0);
        break;
    }
  }

  exit:
  FUNC2 (FUNC7 (f) == Z_OK);
  if (!res) {
    for (i = MAX_DIR_DEPTH - 1; i >= 0; i--) {
      struct tar_unpack_dir_mtime_entry *p;
      for (p = M.e[i]; p != NULL; p = p->next) {
        FUNC2 (FUNC16 (full_filename, PATH_MAX, "%s/%s", path, p->dirname) < PATH_MAX);
        int r = FUNC11 (full_filename, &p->st);
        if (r < 0) {
          FUNC10 ("lcopy_attrs (%s) returns error code %d. %m\n", full_filename, r);
          res = -2;
          goto exit2;
        }
      }
    }
  }
  exit2:

  FUNC5 (mrk);
  return res;
}