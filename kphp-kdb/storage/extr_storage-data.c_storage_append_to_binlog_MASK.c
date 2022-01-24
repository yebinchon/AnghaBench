#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ wronly_binlogs; int binlogs; long long log_readto_pos; TYPE_1__** B; } ;
typedef  TYPE_2__ volume_t ;
struct TYPE_4__ {scalar_t__ size; int fd_wronly; int /*<<< orphan*/  abs_filename; int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int STORAGE_ERR_NO_WRONLY_BINLOGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 long long FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,scalar_t__) ; 

int FUNC7 (volume_t *V) {
  int k;
  V->wronly_binlogs = 0;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->size < V->B[0]->size) {
      FUNC2 ("Skip \"%s\", since it is shorter than %s.\n", V->B[k]->abs_filename, V->B[0]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    if (!V->B[k]->prefix) {
      FUNC2 ("Skip \"%s\", since it isn't prefix of %s.\n", V->B[k]->abs_filename, V->B[0]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    V->B[k]->fd_wronly = FUNC5 (V->B[k]->abs_filename, O_WRONLY);
    if (V->B[k]->fd_wronly < 0) {
      FUNC2 ("open (\"%s\", O_WRONLY) fail. %m", V->B[k]->abs_filename);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    long long end_pos = FUNC4 (V->B[k]->fd_wronly, 0, SEEK_END);
    if (end_pos != V->log_readto_pos) {
      FUNC2 ("lseek (\"%s\", 0, SEEK_END) returns %lld, but V->log_readto_pos is equal to %lld.\n", V->B[k]->abs_filename, end_pos, V->log_readto_pos);
      FUNC0 (V->B[k]->fd_wronly);
      V->B[k]->fd_wronly = -1;
      continue;
    }
    if (FUNC3 (V->B[k]->fd_wronly, F_WRLCK) <= 0) {
      FUNC2 ("lock_whole_file (%s, F_WRLCK) fail.\n", V->B[k]->abs_filename);
      FUNC1 (1);
    }
    V->wronly_binlogs++;
  }
  if (V->wronly_binlogs <= 0) {
    FUNC6 (1, "binlogs: %d, wronly: %d\n", V->binlogs, V->wronly_binlogs);
    return STORAGE_ERR_NO_WRONLY_BINLOGS;
  }
  return 0;
}