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
struct metafile {char* data; long long* local_offsets; int /*<<< orphan*/ * aio; TYPE_1__* header; } ;
struct TYPE_2__ {int metafile_size; int nrecords; scalar_t__ local_offset; scalar_t__ global_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,long long*,scalar_t__,int,int /*<<< orphan*/ *,struct metafile*) ; 
 int /*<<< orphan*/  ct_metafile_aio ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  idx_fd ; 
 int metafile_number ; 
 struct metafile* metafiles ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8 (int metafile) {
  //WaitAio = NULL;
  FUNC1 ();

  FUNC2 (metafile < metafile_number);

  struct metafile *meta = &metafiles[metafile];

  if (verbosity >= 3) {
    FUNC5 (stderr, "loading metafile %d in aio mode\n", metafile);
  }


  if (meta->aio != NULL) {
    FUNC3 (meta->aio);
    if (meta->aio != NULL) {
      //WaitAio = meta->aio;
      FUNC0 (meta->aio);
      return;
    }

    if (meta->data) {
      return;
    } else {
      FUNC5 (stderr, "Previous AIO query failed at %p, scheduling a new one\n", meta);
    }
  } else {
    if (verbosity >= 4) {
      FUNC5 (stderr, "No previous aio found for this metafile\n");
    }
  }

  if (meta->data) {
    FUNC5 (stderr, "Error: memory leak at load_metafile.\n");
    return;
  }                             

  FUNC6 ();

  //add_use (metafile);

  while (1) {
    meta->local_offsets = (long long *)FUNC7 (meta->header->metafile_size);
    if (meta->local_offsets != NULL) {
      meta->data = (char *)(meta->local_offsets + meta->header->nrecords);
      break;
    }
    FUNC5 (stderr, "no space to load metafile - cannot allocate %d bytes\n", meta->header->metafile_size);
  }

  allocated_metafile_bytes += meta->header->metafile_size;

  if (verbosity >= 4) {
    FUNC5 (stderr, "AIO query creating...\n");
  }
  meta->aio = FUNC4 (idx_fd, meta->local_offsets, meta->header->global_offset + meta->header->local_offset, meta->header->metafile_size, &ct_metafile_aio, meta);
  if (verbosity >= 4) {
    FUNC5 (stderr, "AIO query created\n");
  }
  FUNC2 (meta->aio != NULL);
  //WaitAio = meta->aio;
  FUNC0 (meta->aio);

  return;
}