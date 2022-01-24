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
struct metafile {TYPE_1__* header; scalar_t__ local_offsets; struct aio_connection* aio; scalar_t__ data; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct TYPE_2__ {int metafile_size; int /*<<< orphan*/  crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metafile*) ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ct_aio ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int metafiles ; 
 int /*<<< orphan*/  metafiles_load_errors ; 
 int /*<<< orphan*/  metafiles_load_success ; 
 int /*<<< orphan*/  metafiles_loaded ; 
 int /*<<< orphan*/  stderr ; 
 int tot_aio_loaded_bytes ; 
 scalar_t__ use_metafile_crc32 ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

int FUNC5 (struct connection *c, int read_bytes) {
  if (verbosity > 2) {
    FUNC3 (stderr, "onload_metafile(%p,%d)\n", c, read_bytes);
  }

  struct aio_connection *a = (struct aio_connection *)c;
  struct metafile *meta = (struct metafile *) a->extra;

  FUNC1 (a->basic_type == ct_aio);
  FUNC1 (meta != NULL);          

  if (meta->aio != a) {
    FUNC3 (stderr, "assertion (meta->aio == a) will fail\n");
    FUNC3 (stderr, "%p != %p\n", meta->aio, a);
  }

  FUNC1 (meta->aio == a);

  if (read_bytes != meta->header->metafile_size) {
    if (verbosity > 0) {
      FUNC3 (stderr, "ERROR reading metafile: read %d bytes out of %d: %m\n", read_bytes, meta->header->metafile_size);
    }
  }
  if (verbosity > 2) {
    FUNC3 (stderr, "*** Read metafile: read %d bytes\n", read_bytes);
  }

  if (read_bytes != meta->header->metafile_size) {
    meta->aio = NULL;
    meta->data = 0;
    FUNC4 (meta->local_offsets, meta->header->metafile_size);  
    meta->local_offsets = 0;
    allocated_metafile_bytes -= meta->header->metafile_size;
    metafiles_load_errors ++;
  } else {
    meta->aio = NULL;
    metafiles_loaded ++;
    FUNC0 (meta - metafiles);
    metafiles_load_success ++;
    if (use_metafile_crc32) {
      FUNC2 (meta->local_offsets, meta->header->metafile_size, &meta->header->crc32, 1);
    }
    tot_aio_loaded_bytes += read_bytes;
  }
  return 1;
}