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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {char const* filename; struct stat st; struct TYPE_4__* next; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*,TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*) ; 

__attribute__((used)) static int FUNC9 (const char *path, struct stat *S) {
  char a[PATH_MAX];
  if (FUNC1 (S->st_mode)) {
    if (FUNC7 (path)) {
      FUNC8 (1, "unlink (%s) failed. %m\n", path);
      return -5;
    }
  } else if (FUNC0 (S->st_mode)) {
    int l = FUNC6 (path);
    file_t *px, *p;
    int n = FUNC3 (path, &px, 0, 1);
    if (n < 0) {
      return -2;
    }
    for (p = px; p != NULL; p = p->next) {
      int m = l + 2 + FUNC6 (p->filename);
      if (PATH_MAX < m) {
        return -6;
      }
      FUNC5 (a, "%s/%s", path, p->filename);
      if (FUNC9 (a, &p->st) < 0) {
        return -3;
      }
    }
    FUNC2 (px);
    if (FUNC4 (path)) {
      FUNC8 (1, "rmdir (%s) failed. %m\n", path);
      return -7;
    }
  } else {
    if (FUNC7 (path)) {
      return -4;
    }
  }
  return 0;
}