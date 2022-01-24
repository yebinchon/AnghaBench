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
struct stat {int st_dev; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 scalar_t__ MAX_DIRNAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4 (char *dirname, struct stat *buf, int create) {
  if (FUNC2 (dirname, buf) < 0) {
    if (errno != ENOENT || !create) {
      return -1;
    }
    if (FUNC1 (dirname, 0750) < 0) {
      return -1;
    }
    if (FUNC2 (dirname, buf) < 0) {
      return -1;
    }
  }
  if (!FUNC0 (buf->st_mode) || FUNC3 (dirname) > MAX_DIRNAME_LEN) {
    errno = ENOTDIR;
    return -1;
  }
  return buf->st_dev;
}