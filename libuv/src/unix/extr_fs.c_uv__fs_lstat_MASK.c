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
typedef  int /*<<< orphan*/  uv_stat_t ;
struct stat {int dummy; } ;

/* Variables and functions */
 int UV_ENOSYS ; 
 int FUNC0 (char const*,struct stat*) ; 
 int FUNC1 (int,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *path, uv_stat_t *buf) {
  struct stat pbuf;
  int ret;

  ret = FUNC1(-1, path, /* is_fstat */ 0, /* is_lstat */ 1, buf);
  if (ret != UV_ENOSYS)
    return ret;

  ret = FUNC0(path, &pbuf);
  if (ret == 0)
    FUNC2(&pbuf, buf);

  return ret;
}