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
struct stat {scalar_t__ st_mtime; int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_3__ {scalar_t__ n; scalar_t__ mtime; char** prefix; } ;
typedef  TYPE_1__ hash_entry_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ MAX_DIRS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,...) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int split_modulo ; 
 int split_rem ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char*,char*) ; 
 scalar_t__ FUNC11 (scalar_t__*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (scalar_t__*) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__* walk_path ; 
 int walk_prefix_len ; 

__attribute__((used)) static int FUNC15 (DIR *D[5], int D_ID[5], int depth, char *base_path) {
  const int l = FUNC13 (walk_path);
  D[depth] = FUNC8 (walk_path);
  if (D[depth] == NULL) {
    FUNC7 ("opendir (%s) fail (depth = %d). %m\n", walk_path, depth);
    return -1;
  }
  struct dirent *entry;
  while ( (entry = FUNC9 (D[depth])) != NULL) {
    if (!FUNC12 (entry->d_name, ".") || !FUNC12 (entry->d_name, "..")) {
      continue;
    }
    FUNC10 (walk_path + l, "/%s", entry->d_name);
    struct stat st;
    if (FUNC11 (walk_path, &st)) {
      FUNC7 ("stat (%s) fail. %m\n", walk_path);
      continue;
    }
    if (FUNC0(st.st_mode) && depth < 4) {
      errno = 0;
      D_ID[depth + 1] = FUNC14 (entry->d_name, NULL, 10);
      if (errno) {
        continue;
      }
      int skip = 0;
      switch (depth) {
        case 0:
          if (!FUNC3 (D_ID[1])) {
            skip = 1;
          }
          break;
        case 1:
          if (!FUNC4 (D_ID[1] + D_ID[2] * 100)) {
            skip = 1;
          }
          break;
        case 2:
          if (D_ID[3] % split_modulo != split_rem) {
            skip = 1;
          }
          break;
      }
      if (skip) {
        continue;
      }
      FUNC15 (D, D_ID, depth + 1, base_path);
    } else if (FUNC1(st.st_mode) && depth >= 3 && depth <= 4) {
      hash_entry_t *E = FUNC6 (walk_path + walk_prefix_len, 1);
      FUNC2 (E->n < MAX_DIRS);
      if (E->mtime < st.st_mtime) {
        E->mtime = st.st_mtime;
      }
      E->prefix[E->n++] = base_path;
    }
  }
  walk_path[l] = 0;
  FUNC5 (D[depth]);
  return 0;
}