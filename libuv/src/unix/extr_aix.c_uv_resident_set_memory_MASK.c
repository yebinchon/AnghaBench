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
struct TYPE_3__ {scalar_t__ pr_rssize; } ;
typedef  TYPE_1__ psinfo_t ;
typedef  int /*<<< orphan*/  psinfo ;
typedef  int /*<<< orphan*/  pp ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int UV_EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(size_t* rss) {
  char pp[64];
  psinfo_t psinfo;
  int err;
  int fd;

  FUNC4(pp, sizeof(pp), "/proc/%lu/psinfo", (unsigned long) FUNC1());

  fd = FUNC2(pp, O_RDONLY);
  if (fd == -1)
    return FUNC0(errno);

  /* FIXME(bnoordhuis) Handle EINTR. */
  err = UV_EINVAL;
  if (FUNC3(fd, &psinfo, sizeof(psinfo)) == sizeof(psinfo)) {
    *rss = (size_t)psinfo.pr_rssize * 1024;
    err = 0;
  }
  FUNC5(fd);

  return err;
}