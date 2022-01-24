#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct metafile {char* data; scalar_t__ local_offsets; TYPE_1__* header; scalar_t__ aio; } ;
struct TYPE_4__ {int key_len; int data_len; char* data; } ;
struct TYPE_3__ {scalar_t__ global_offset; scalar_t__ local_offset; scalar_t__ metafile_size; scalar_t__ nrecords; int /*<<< orphan*/  crc32; } ;

/* Variables and functions */
 int MAX_METAFILES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  idx_fd ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct metafile* metafiles ; 
 int /*<<< orphan*/  metafiles_loaded ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ use_metafile_crc32 ; 
 int verbosity ; 
 void* FUNC9 (scalar_t__) ; 

int FUNC10 (int metafile_number) {
  if (verbosity >= 3) {
    FUNC3 (stderr, "loading metafile %d\n", metafile_number);
  }
  FUNC1 (0 <= metafile_number && metafile_number < MAX_METAFILES);
  struct metafile *meta = &metafiles[metafile_number];
  if (meta->aio) {
    FUNC3 (stderr, "meta->aio != 0. Dropping data\n");
    meta->aio = 0;
    meta->data = 0;
    meta->local_offsets = 0;
  }
  if (meta->data != 0) {
    return 1;
  }

  //if (metafiles_loaded == MAX_METAFILES_LOADED) {
  //  metafile_unload_LRU();
  //}

  FUNC4 ();

  FUNC1 (FUNC5 (idx_fd, meta->header->global_offset + meta->header->local_offset, SEEK_SET) == meta->header->global_offset + meta->header->local_offset);
  FUNC1 (meta->local_offsets == 0);

  meta->local_offsets = FUNC9 (meta->header->metafile_size);
  while  (!meta->local_offsets) {
    if (!FUNC7()) {
      FUNC3 (stderr, "No memory\n");
      return 0;
    }
    meta->local_offsets = FUNC9 (meta->header->metafile_size);
  }

  meta->data = (char *) (meta->local_offsets + meta->header->nrecords);
  FUNC1 (FUNC8 (idx_fd, meta->local_offsets, meta->header->metafile_size) == meta->header->metafile_size);
  if (use_metafile_crc32) {
    FUNC2 (meta->local_offsets, meta->header->metafile_size, &meta->header->crc32, 1);
  }
  if (verbosity >= 4 && meta->data) {
    int i;
    for (i = 0; i < meta->header->nrecords; i++) {
      FUNC3 (stderr, "key/data - %d/%d - %s\n", FUNC6 (metafile_number, i)->key_len, FUNC6 (metafile_number, i)->data_len, FUNC6 (metafile_number, i)->data);
    }
  }
  metafiles_loaded++;
  allocated_metafile_bytes += meta->header->metafile_size;
  FUNC0 (metafile_number);
  return 0;
}