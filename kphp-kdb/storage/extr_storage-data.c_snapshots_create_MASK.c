#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int binlogs; TYPE_2__** B; } ;
typedef  TYPE_1__ volume_t ;
struct TYPE_6__ {scalar_t__ fd_rdonly; scalar_t__ fd_wronly; size_t dir_id; } ;
typedef  TYPE_2__ storage_binlog_file_t ;
struct TYPE_7__ {char* path; } ;

/* Variables and functions */
 TYPE_4__* Dirs ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char** filename_newidx ; 
 scalar_t__* newidx_fd ; 
 size_t newidx_fds ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 int FUNC2 (char*,char*,char*,char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (volume_t *V, char *newidxname) {
  int k, ok = 0;
  char *p = FUNC4 (newidxname, '/');
  if (p == NULL) {
    p = newidxname;
  } else {
    p++;
  }
  int l = FUNC3 (p) + 1;
  newidx_fds = 0;
  for (k = 0; k < V->binlogs; k++) {
    storage_binlog_file_t *B = V->B[k];
    if (B->fd_rdonly < 0 && B->fd_wronly < 0) {
      continue;
    }
    int ql = l + 1 + FUNC3 (Dirs[B->dir_id].path);
    char *q = FUNC5 (ql);
    FUNC0 (FUNC2 (q, "%s/%s", Dirs[B->dir_id].path, p) + 1 == ql);
    filename_newidx[newidx_fds] = q;
    newidx_fd[newidx_fds] = FUNC1 (q, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
    if (newidx_fd[newidx_fds] >= 0) {
      ok++;
    }
    newidx_fds++;
  }
  return ok;
}