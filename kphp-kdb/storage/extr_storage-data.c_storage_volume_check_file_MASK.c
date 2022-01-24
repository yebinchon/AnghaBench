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
struct TYPE_5__ {int binlogs; TYPE_1__** B; } ;
typedef  TYPE_2__ volume_t ;
struct TYPE_4__ {scalar_t__ fd_wronly; size_t dir_id; } ;

/* Variables and functions */
 int /*<<< orphan*/ * Dirs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,long long) ; 

int FUNC1 (volume_t *V, double max_disk_usage, long long file_size) {
  int k;
  for (k = 0; k < V->binlogs; k++) {
    if (V->B[k]->fd_wronly < 0) {
      return 0;
    }
  }
  for (k = 0; k < V->binlogs; k++) {
    if (!FUNC0 (&Dirs[V->B[k]->dir_id], max_disk_usage, file_size)) {
      return 0;
    }
  }
  return 1;
}