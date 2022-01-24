#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t dir_id; int /*<<< orphan*/  st_read; } ;
typedef  TYPE_1__ storage_binlog_file_t ;
struct TYPE_9__ {scalar_t__ refcnt; TYPE_1__* B; } ;
typedef  TYPE_2__ metafile_t ;
struct TYPE_10__ {int /*<<< orphan*/  st_read; } ;

/* Variables and functions */
 TYPE_7__* Dirs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3 (metafile_t *meta, int success) {
  storage_binlog_file_t *B = meta->B;
  FUNC2 (&Dirs[B->dir_id].st_read, success);
  FUNC2 (&B->st_read, success);
  if (!success) {
    FUNC0 (B, meta);
    if (meta->refcnt <= 0) {
      FUNC1 (meta);
    }
  }
}