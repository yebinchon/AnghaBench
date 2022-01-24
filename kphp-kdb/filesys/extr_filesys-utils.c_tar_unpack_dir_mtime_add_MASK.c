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
struct TYPE_3__ {struct tar_unpack_dir_mtime_entry** e; } ;
typedef  TYPE_1__ tar_unpack_dir_mtime_t ;
struct tar_unpack_dir_mtime_entry {struct tar_unpack_dir_mtime_entry* next; int /*<<< orphan*/  dirname; int /*<<< orphan*/  st; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int MAX_DIR_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 struct tar_unpack_dir_mtime_entry* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4 (tar_unpack_dir_mtime_t *M, char *dir, struct stat *st) {
  int k = 0;
  char *s;
  for (s = dir; *s; s++) {
    if (*s == '/') {
      k++;
    }
  }
  if (k < MAX_DIR_DEPTH) {
    struct tar_unpack_dir_mtime_entry *E = FUNC3 (sizeof (struct tar_unpack_dir_mtime_entry) + FUNC2 (dir) + 1);
    FUNC0 (&E->st, st, sizeof (struct stat));
    FUNC1 (E->dirname, dir);
    E->next = M->e[k];
    M->e[k] = E;
  }
}