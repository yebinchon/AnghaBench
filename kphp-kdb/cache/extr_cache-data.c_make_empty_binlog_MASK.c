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
struct lev_start {int dummy; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cache_id ; 
 struct lev_start* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,int,int) ; 
 int FUNC6 (char*,int,char*,char const*) ; 
 int FUNC7 (int,struct lev_start*,int) ; 

void FUNC8 (const char *binlog_name) {
  char a[PATH_MAX];
  FUNC0 (FUNC6 (a, PATH_MAX, "%s.bin", binlog_name) < PATH_MAX);
  int sz;
  struct lev_start *E = FUNC1 (cache_id, &sz);
  int fd = FUNC5 (a, O_CREAT | O_WRONLY | O_EXCL, 0660);
  if (fd < 0) {
    FUNC4 ("open (%s, O_CREAT | O_WRONLY | O_EXCL, 0660) failed. %m\n", a);
    FUNC0 (fd >= 0);
  }
  FUNC0 (FUNC7 (fd, E, sz) == sz);
  FUNC0 (FUNC3 (fd) >= 0);
  FUNC0 (FUNC2 (fd) >= 0);
}