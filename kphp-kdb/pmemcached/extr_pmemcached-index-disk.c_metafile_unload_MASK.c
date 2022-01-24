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
struct metafile {scalar_t__ data; TYPE_1__* header; scalar_t__ local_offsets; scalar_t__ aio; } ;
struct TYPE_2__ {scalar_t__ metafile_size; } ;

/* Variables and functions */
 int MAX_METAFILES ; 
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct metafile* metafiles ; 
 int /*<<< orphan*/  metafiles_loaded ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

int FUNC4 (int metafile_number) {
  FUNC0 (0 <= metafile_number && metafile_number < MAX_METAFILES);
  if (verbosity >= 3) {
    FUNC2 (stderr, "unloading metafile %d\n", metafile_number);
  }
  struct metafile *meta = &metafiles[metafile_number];
  if (meta->data == 0) {
    return -1;
  }
  if (meta->aio) {
    return -1;
  }
  FUNC3 (meta->local_offsets, meta->header->metafile_size);
  meta->data = 0;
  meta->local_offsets = 0;
  metafiles_loaded--;
  allocated_metafile_bytes -= meta->header->metafile_size;
  FUNC1 (metafile_number);
  return 0;
}