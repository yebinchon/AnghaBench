#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  binlogname ;
struct TYPE_2__ {int scanned; char* path; scalar_t__ binlogs; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 TYPE_1__* Dirs ; 
 int PATH_MAX ; 
 int STORAGE_ERR_OPENDIR ; 
 int STORAGE_ERR_SCANDIR_MULTIPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*) ; 

int FUNC10 (int dir_id) {
  char binlogname[PATH_MAX];
  if (Dirs[dir_id].scanned) {
    return STORAGE_ERR_SCANDIR_MULTIPLE;
  }
  DIR *D = FUNC3 (Dirs[dir_id].path);
  if (D == NULL) {
    FUNC9 (1, "storage_scan_dir: opendir (%s) fail. %m\n", Dirs[dir_id].path);
    return STORAGE_ERR_OPENDIR;
  }

  struct dirent *entry;
  int add_binlog_fails = 0;
  while ( (entry = FUNC4 (D)) != NULL) {
    if (!FUNC6 (entry->d_name, ".") || !FUNC6 (entry->d_name, "..")) {
      continue;
    }
    int l = FUNC8 (entry->d_name);
    if (l <= 4 || FUNC6 (entry->d_name + l - 4, ".bin")) {
      continue;
    }
    if (FUNC8 (Dirs[dir_id].path) + 1 + l > sizeof (binlogname) - 1) {
      FUNC2 ("Binlog path too long\n");
      FUNC1 (1);
    }
    FUNC7 (binlogname, Dirs[dir_id].path);
    char *p = binlogname + FUNC8 (binlogname);
    if (p[-1] != '/') {
      *p++ = '/';
    }
    FUNC7 (p, entry->d_name);
    int r = FUNC5 (binlogname, dir_id);
    if (r < 0) {
      add_binlog_fails++;
      continue;
    }
    Dirs[dir_id].binlogs++;
  }
  FUNC0 (D);
  Dirs[dir_id].scanned = (Dirs[dir_id].binlogs > 0) ? 1 : 0;
  if (add_binlog_fails > 0) {
    FUNC2 ("storage_scan_dir (%d): there are %d add_binlog_fails.\n", dir_id, add_binlog_fails);
  }
  return 0;
}