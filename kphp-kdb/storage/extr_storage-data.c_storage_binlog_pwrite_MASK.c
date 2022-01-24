#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int binlogs; TYPE_3__** B; } ;
typedef  TYPE_1__ volume_t ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {int fd_wronly; scalar_t__ size; } ;

/* Variables and functions */
 int STORAGE_ERR_PWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 size_t FUNC3 (int,void*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  wronly_binlogs_closed ; 

int FUNC4 (volume_t *V, void *buf, size_t count, off_t offset, off_t truncate_offset) {
  int ok = 0, k;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->fd_wronly >= 0) {
      if (FUNC3 (V->B[k]->fd_wronly, buf, count, offset) != count) {
        FUNC2 (V->B[k]->fd_wronly, truncate_offset);
        V->B[k]->size = truncate_offset;
        FUNC0 (V->B[k]->fd_wronly);
        wronly_binlogs_closed++;
        V->B[k]->fd_wronly = -2;
      } else {
        off_t bytes = count + offset;
        if (V->B[k]->size < bytes) {
          V->B[k]->size = bytes;
        }
        FUNC1 (V->B[k]);
        ok++;
      }
    }
  }
  if (!ok) {
    return STORAGE_ERR_PWRITE;
  }

  return 0;
}