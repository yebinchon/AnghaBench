#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct metafile {int num; struct aio_connection* aio; scalar_t__ data; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct TYPE_5__ {scalar_t__ metafile_index; } ;
typedef  TYPE_1__ list_t ;
struct TYPE_7__ {int tot_lists; } ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__ Header ; 
 int /*<<< orphan*/  Snapshot ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ aio_errors_verbosity ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,long long) ; 
 scalar_t__ crc32_check_mode ; 
 scalar_t__ ct_aio ; 
 int /*<<< orphan*/  data_metafiles_loaded ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 long long FUNC7 (int) ; 
 long long FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,long long,long long) ; 
 TYPE_2__** metafiles ; 
 int /*<<< orphan*/  metafiles_load_errors ; 
 int /*<<< orphan*/  metafiles_load_success ; 
 int /*<<< orphan*/  metafiles_loaded ; 
 scalar_t__* revlist_metafiles_crc32 ; 
 int /*<<< orphan*/  revlist_metafiles_loaded ; 
 int /*<<< orphan*/  stderr ; 
 int tot_aio_loaded_bytes ; 
 long long tot_metafiles_memory ; 
 int tot_revlist_metafiles ; 
 int /*<<< orphan*/  total_aio_time ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,long long) ; 

int FUNC12 (struct connection *c, int read_bytes) {
  FUNC10 (4, "onload_metafile(%p,%d) total_aio_time = %lf\n", c, read_bytes, total_aio_time);

  struct aio_connection *a = (struct aio_connection *)c;
  struct metafile *meta = (struct metafile *) a->extra;

  FUNC3 (a->basic_type == ct_aio);
  FUNC3 (meta != NULL);          

  if (meta->aio != a) {
    FUNC6 (stderr, "assertion (meta->aio == a) will fail\n");
    FUNC6 (stderr, "%p != %p\n", meta->aio, a);
  }

  FUNC3 (meta->aio == a);

  long long size, offset;
  int x = meta->num;
  if (x <= Header.tot_lists) {
    offset = FUNC7 (x);
    FUNC3 (offset >= 0);
    size = FUNC7 (x + 1) - offset;
    FUNC3 (size >= 4);
  } else {
    FUNC3 (x <= Header.tot_lists + tot_revlist_metafiles);
    offset = FUNC8 (x - Header.tot_lists - 1);
    FUNC3 (offset >= 0);
    size = FUNC8 (x - Header.tot_lists) - offset;
    FUNC3 (size >= 4);
  }
  FUNC3 (!(size & 3));
  if (crc32_check_mode && read_bytes == size) {
    if (x <= Header.tot_lists) {
      FUNC3 (FUNC4 (metafiles[x]->data, size - 4) == *(((unsigned *)(metafiles[x]->data)) + (size >> 2) - 1));
    } else {
      if (FUNC4 (metafiles[x]->data, size) != revlist_metafiles_crc32[x - Header.tot_lists - 1]) {
        FUNC10 (0, "x = %d, y = %d, total = %d\n", x, x - Header.tot_lists - 1, tot_revlist_metafiles);
      }
      FUNC3 (FUNC4 (metafiles[x]->data, size) == revlist_metafiles_crc32[x - Header.tot_lists - 1]);
    }
  }    

  if (read_bytes != size) {
    if (verbosity > 0 || aio_errors_verbosity) {
      FUNC6 (stderr, "ERROR reading metafile #%d: read %d bytes out of %lld: %m\n", meta->num, read_bytes, size);
    }
  }
  if (verbosity > 2) {
    FUNC6 (stderr, "*** Read metafile: read %d bytes\n", read_bytes);
  }

  if (read_bytes != size) {
    meta->aio = NULL;
    FUNC11 (meta->data, size);  
    tot_metafiles_memory -= size;
    meta->data = 0;
    metafiles_load_errors ++;
  } else {
    FUNC9 (Snapshot, meta->data, size, offset);
    meta->aio = NULL;
    metafiles_loaded ++;
    FUNC2 (meta->num);
    metafiles_load_success ++;
    tot_aio_loaded_bytes += read_bytes;
    if (x <= Header.tot_lists) { 
      //list_t *L = get_list_m (FLI_ENTRY_LIST_ID (x));
      list_t *L = FUNC1 (FUNC0 (x), -1);
      if (!L || L->metafile_index >= 0) {
        FUNC3 (!L || L->metafile_index == meta->num);
        FUNC5 (meta->num);
      }
      data_metafiles_loaded ++;
    } else {
      revlist_metafiles_loaded ++;
    }
  }
  FUNC10 (4, "onload_metafile finished\n");
  return 1;
}