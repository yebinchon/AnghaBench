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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(uv_fs_t* req) {
  char* buf;

#if defined(_POSIX_VERSION) && _POSIX_VERSION >= 200809L
  buf = realpath(req->path, NULL);
  if (buf == NULL)
    return -1;
#else
  ssize_t len;

  len = FUNC2(req->path);
  buf = FUNC3(len + 1);

  if (buf == NULL) {
    errno = ENOMEM;
    return -1;
  }

  if (FUNC0(req->path, buf) == NULL) {
    FUNC1(buf);
    return -1;
  }
#endif

  req->ptr = buf;

  return 0;
}