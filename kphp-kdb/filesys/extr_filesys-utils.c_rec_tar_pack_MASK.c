#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  gzFile ;
struct TYPE_6__ {char const* const filename; struct stat st; struct TYPE_6__* next; } ;
typedef  TYPE_1__ file_t ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TAR_PACK_ERR_FILL_HEADER ; 
 int TAR_PACK_ERR_GZWRITE ; 
 int TAR_PACK_ERR_OPEN ; 
 int TAR_PACK_ERR_PATH_TOO_LONG ; 
 int TAR_PACK_ERR_WRITE_HEADER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char*,TYPE_1__**,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int) ; 
 int FUNC13 (char*,char*,int) ; 
 TYPE_1__* FUNC14 (TYPE_1__*,char*) ; 
 int FUNC15 (char*,int,char*,char const* const,...) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*,struct stat*,char const* const) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,char const* const) ; 
 char* FUNC20 (int) ; 

__attribute__((used)) static int FUNC21 (gzFile f, const char *const src_path, const char *const path, struct stat *S) {
  FUNC19 (3, "rec_tar_pack (path = %s)\n", path);
  char a[PATH_MAX], b[PATH_MAX], header[512];
  if (FUNC1 (S->st_mode)) {
    if (FUNC15 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX) {
      return TAR_PACK_ERR_PATH_TOO_LONG;
    }
    int link_length = FUNC13 (a, b, PATH_MAX);
    if (link_length < 0 || link_length >= PATH_MAX) {
      return -4;
    }
    b[link_length] = 0;
    if (link_length > 100) {
      FUNC17 (header, link_length, 'K');
      if (FUNC18 (f, header) < 0) {
        return TAR_PACK_ERR_WRITE_HEADER;
      }
      int i;
      for (i = 0; i < link_length + 1; i += 512) {
        int o = link_length + 1 - i;
        if (o > 512) {
          o = 512;
        }
        FUNC10 (header, 0, 512);
        FUNC9 (header, b + i, o);
        if (FUNC8 (f, header, 512) != 512) {
          return TAR_PACK_ERR_GZWRITE;
        }
      }
      link_length = 100;
    }
    if (FUNC16 (f, header, S, path) < 0) {
      return TAR_PACK_ERR_FILL_HEADER;
    }
    FUNC9 (header + 157, b,  link_length);
    if (FUNC18 (f, header) < 0) {
      return TAR_PACK_ERR_WRITE_HEADER;
    }
  } else if (FUNC0 (S->st_mode)) {
    if (path[0]) {
      char slash_ended_path[PATH_MAX];
      FUNC2 (FUNC15 (slash_ended_path, PATH_MAX, "%s/", path) < PATH_MAX);
      if (FUNC16 (f, header, S, slash_ended_path) < 0) {
        return TAR_PACK_ERR_FILL_HEADER;
      }
      if (FUNC18 (f, header) < 0) {
        return TAR_PACK_ERR_WRITE_HEADER;
      }
    }
    if (FUNC15 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX) {
      return TAR_PACK_ERR_PATH_TOO_LONG;
    }
    file_t *px, *p;
    int n = FUNC7 (a, &px, 1, 1);
    if (n < 0) {
      return -2;
    }

    if (!path[0]) {
      px = FUNC14 (px, ".filesys-xfs-engine.pid");
    }

    for (p = px; p != NULL; p = p->next) {
      if (path[0]) {
        if (FUNC15 (a, PATH_MAX, "%s/%s", path, p->filename) >= PATH_MAX) {
          return TAR_PACK_ERR_PATH_TOO_LONG;
        }
      } else {
        if (FUNC15 (a, PATH_MAX, "%s", p->filename) >= PATH_MAX) {
          return TAR_PACK_ERR_PATH_TOO_LONG;
        }
      }
      int r = FUNC21 (f, src_path, a, &p->st);
      if (r < 0) {
        return r;
      }
    }
    FUNC6 (px);
  } else {
    if (FUNC15 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX) {
      return TAR_PACK_ERR_PATH_TOO_LONG;
    }
    if (FUNC16 (f, header, S, path) < 0) {
      return TAR_PACK_ERR_FILL_HEADER;
    }
    if (FUNC18 (f, header) < 0) {
      return TAR_PACK_ERR_WRITE_HEADER;
    }
    int fd = FUNC11 (a, O_RDONLY);
    if (fd < 0) {
      return TAR_PACK_ERR_OPEN;
    }
    int BUF_SIZE = 16 << 20;
    dyn_mark_t mrk;
    FUNC4 (mrk);
    char *buf = FUNC20 (BUF_SIZE);
    off_t i = 0;
    while (i < S->st_size) {
      int o = S->st_size - i;
      if (o > BUF_SIZE) { o = BUF_SIZE; }
      int padded = (o + 511) & -512;
      FUNC2 (o == FUNC12 (fd, buf, o));
      if (padded != o) {
        FUNC10 (buf + o, 0, padded - o);
      }
      if (FUNC8 (f, buf, padded) != padded) {
        FUNC5 (mrk);
        return TAR_PACK_ERR_GZWRITE;
      }
      i += padded;
    }
    FUNC5 (mrk);
    FUNC3 (fd);
  }
  return 0;
}