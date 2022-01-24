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
struct TYPE_4__ {int binlogs; int /*<<< orphan*/  mutex_write; TYPE_2__** B; } ;
typedef  TYPE_1__ volume_t ;
struct TYPE_5__ {int dir_id; int fd_rdonly; int fd_wronly; int size; scalar_t__ prefix; } ;
typedef  TYPE_2__ storage_binlog_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (volume_t *V, int dir_id) {
  int k;
  for (k = 0; k < V->binlogs; k++) {
    storage_binlog_file_t *B = V->B[k];
    if (B->dir_id == dir_id) {
      if (B->fd_rdonly >= 0) {
        FUNC0 (B->fd_rdonly);
        B->fd_rdonly = -1;
      }
      FUNC1 (&V->mutex_write);
      if (B->fd_wronly >= 0) {
        FUNC0 (B->fd_wronly);
        B->fd_wronly = -1;
      }
      FUNC2 (&V->mutex_write);
      B->prefix = 0;
      B->size = -1;
      return 0;
    }
  }
  return -1;
}