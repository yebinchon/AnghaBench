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
struct stat {char* st_mode; } ;
struct TYPE_4__ {char* filename; struct stat st; struct TYPE_4__* next; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*,TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*,int,char*,char const* const,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC11 (const char *const src_path, const char *const dst_path, char *path, struct stat *S) {
  char a[PATH_MAX], b[PATH_MAX];
  if (FUNC1 (S->st_mode)) {
    if (FUNC8 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX) {
      return -1;
    }
    int r = FUNC7 (a, b, PATH_MAX);
    if (r < 0 || r >= PATH_MAX) {
      return -4;
    }
    b[r] = 0;
    if (FUNC8 (a, PATH_MAX, "%s/%s", dst_path, path) >= PATH_MAX) {
      return -1;
    }
    if (FUNC9 (b, a) < 0) {
      FUNC10 (1, "symlink (%s, %s) failed. %m\n", b, a);
      return -5;
    }
    if (FUNC4 (a, S) < 0) {
      return -6;
    }
  } else if (FUNC0 (S->st_mode)) {
    if (FUNC8 (a, PATH_MAX, "%s/%s", dst_path, path) >= PATH_MAX) {
      return -1;
    }
    if (FUNC6 (a, S->st_mode)) {
      FUNC10 (1, "mkdir (%s, %d) fail. %m\n", a, S->st_mode);
      return -2;
    }
    if (FUNC8 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX) {
      return -1;
    }
    file_t *px, *p;
    int n = FUNC3 (a, &px, 0, 1);
    if (n < 0) {
      return -2;
    }
    for (p = px; p != NULL; p = p->next) {
      if (FUNC8 (a, PATH_MAX, "%s/%s", path, p->filename) >= PATH_MAX) {
        return -1;
      }
      if (FUNC11 (src_path, dst_path, a, &p->st) < 0) {
        return -3;
      }
    }
    FUNC2 (px);
    if (FUNC8 (a, PATH_MAX, "%s/%s", dst_path, path) >= PATH_MAX) {
      return -1;
    }
    if (FUNC4 (a, S) < 0) {
      return -7;
    }
  } else {
    if (FUNC8 (a, PATH_MAX, "%s/%s", src_path, path) >= PATH_MAX || FUNC8 (b, PATH_MAX, "%s/%s", dst_path, path) >= PATH_MAX) {
      return -1;
    }
    if (FUNC5 (a, b) < 0) {
      FUNC10 (1, "link (%s, %s) fail. %m\n", a, b);
      return -1;
    }
  }
  return 0;
}