#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 int last_metafile_start ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int output_revlist_entries ; 
 int /*<<< orphan*/  tmp_object_id ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

void FUNC2 (object_id_t object_id) {
  if (output_revlist_entries - last_metafile_start < 1000) {
    return;
  }
  int c = FUNC0 (tmp_object_id, object_id);
  if (c) {
    FUNC1 (2, "New revlist metafile contains %lld items\n", output_revlist_entries - last_metafile_start);

    last_metafile_start = output_revlist_entries;
  }
}