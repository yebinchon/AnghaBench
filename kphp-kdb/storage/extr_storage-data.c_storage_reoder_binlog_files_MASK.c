#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int binlogs; TYPE_4__** B; int /*<<< orphan*/  volume_id; } ;
typedef  TYPE_1__ volume_t ;
struct TYPE_8__ {long long size; int prefix; int fd_rdonly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmp_storage_binlog_file ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6 (volume_t *V) {
  int k;
  long long max_binlog_size = -1;
  for (k = 0; k < V->binlogs; k++) {
    if (max_binlog_size < V->B[k]->size) {
      max_binlog_size = V->B[k]->size;
    }
  }
  FUNC4 (V->B, V->binlogs, sizeof (V->B[0]), cmp_storage_binlog_file);

  if (V->binlogs <= 0 || max_binlog_size != V->B[0]->size) {
    FUNC3 ("volume %lld: Can't select binlog.\n", V->volume_id);
    FUNC2 (1);
  }

  FUNC5 (V);
  V->B[0]->prefix = 1;
  int i;
  for (i = 1; i < V->binlogs; i++) {
    if (!FUNC0 (V->B[0], V->B[i])) {
      V->B[i]->prefix = 1;
    } else {
      V->B[i]->prefix = 0;
      FUNC1 (V->B[i]->fd_rdonly);
      V->B[i]->fd_rdonly = -1;
    }
  }
}