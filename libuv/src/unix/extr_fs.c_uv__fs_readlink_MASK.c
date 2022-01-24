#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ptr; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ uv_fs_t ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*,int) ; 

__attribute__((used)) static ssize_t FUNC8(uv_fs_t* req) {
  ssize_t maxlen;
  ssize_t len;
  char* buf;
  char* newbuf;

#if defined(_POSIX_PATH_MAX) || defined(PATH_MAX)
  maxlen = uv__fs_pathmax_size(req->path);
#else
  /* We may not have a real PATH_MAX.  Read size of link.  */
  struct stat st;
  int ret;
  ret = FUNC1(req->path, &st);
  if (ret != 0)
    return -1;
  if (!FUNC0(st.st_mode)) {
    errno = EINVAL;
    return -1;
  }

  maxlen = st.st_size;

  /* According to readlink(2) lstat can report st_size == 0
     for some symlinks, such as those in /proc or /sys.  */
  if (maxlen == 0)
    maxlen = FUNC5(req->path);
#endif

  buf = FUNC6(maxlen);

  if (buf == NULL) {
    errno = ENOMEM;
    return -1;
  }

#if defined(__MVS__)
  len = os390_readlink(req->path, buf, maxlen);
#else
  len = FUNC3(req->path, buf, maxlen);
#endif

  if (len == -1) {
    FUNC4(buf);
    return -1;
  }

  /* Uncommon case: resize to make room for the trailing nul byte. */
  if (len == maxlen) {
    newbuf = FUNC7(buf, len + 1);

    if (newbuf == NULL) {
      FUNC4(buf);
      return -1;
    }

    buf = newbuf;
  }

  buf[len] = '\0';
  req->ptr = buf;

  return 0;
}