#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  local_id; TYPE_1__* B; } ;
typedef  TYPE_2__ metafile_t ;
struct TYPE_7__ {int /*<<< orphan*/  volume_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  metafiles_unloaded ; 
 int /*<<< orphan*/  FUNC4 (int,char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5 (metafile_t *meta) {
  int h;
  FUNC4 (3, "metafile_free (%p)\n", meta);
  FUNC1 (meta);
  FUNC0 (FUNC3 (meta->B->volume_id, meta->local_id, &h, -1) != NULL);
  FUNC2 (meta);
  metafiles_unloaded++;
}