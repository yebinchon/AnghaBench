#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  volume_t ;
struct lev_storage_file {int dummy; } ;
struct TYPE_15__ {size_t dir_id; int /*<<< orphan*/  fd_rdonly; } ;
typedef  TYPE_1__ storage_binlog_file_t ;
struct TYPE_16__ {long long offset; int local_id; int size; scalar_t__ corrupted; int /*<<< orphan*/ * aio; int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * data; struct TYPE_16__* hnext; TYPE_1__* B; } ;
typedef  TYPE_2__ metafile_t ;
struct TYPE_14__ {scalar_t__ pending_aio_connections; } ;

/* Variables and functions */
 TYPE_13__* Dirs ; 
 TYPE_2__** M ; 
 int STORAGE_ERR_OPEN ; 
 int STORAGE_ERR_OUT_OF_MEMORY ; 
 int STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,long long,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,long long,int const,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ct_metafile_aio ; 
 TYPE_2__* FUNC4 (long long,int,int*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int const) ; 
 scalar_t__ max_aio_connections_per_disk ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int meta_header_size ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,long long,int,int,long long) ; 

int FUNC10 (volume_t *V, metafile_t **R, storage_binlog_file_t **PB, long long volume_id, int local_id, int filesize, long long offset) {
  *R = NULL;
  *PB = NULL;
  FUNC9 (3, "load_metafile (volume_id = %lld, local_id = %d, filesize = %d, offset = %lld)\n", volume_id, local_id, filesize, offset);
  int h;
  metafile_t *meta = FUNC4 (volume_id, local_id, &h, 0);
  if (meta != NULL) {
    *R = meta;
    FUNC7 (meta);
    if (meta->aio) {
      return -2;
    }
    return 0;
  }
  storage_binlog_file_t *B = *PB = FUNC2 (V, offset, offset + sizeof (struct lev_storage_file) + filesize, 0);
  if (B == NULL) {
    return STORAGE_ERR_OPEN;
  }
  if (max_aio_connections_per_disk && Dirs[B->dir_id].pending_aio_connections >= max_aio_connections_per_disk) {
    return STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS;
  }
  FUNC8 (0);
  FUNC8 (1);
  const int meta_size = filesize + meta_header_size;
  meta = FUNC5 (meta_size);
  if (meta == NULL) {
    return STORAGE_ERR_OUT_OF_MEMORY;
  }
  FUNC6 (meta, 0, sizeof (*meta));
  meta->B = B;
  meta->offset = offset;
  meta->local_id = local_id;
  meta->size = meta_size;
  //meta->timeout = now + MIN_META_LIVING_TIME;
  meta->hnext = M[h];
  FUNC1 (meta->corrupted == 0);
  M[h] = meta;
  FUNC0 (meta);

  const int sz = filesize + sizeof (struct lev_storage_file);
  meta->aio = FUNC3 (B->fd_rdonly, &meta->data[0], offset, sz, &ct_metafile_aio, meta);
  Dirs[B->dir_id].pending_aio_connections++;
  meta->refcnt++;
  FUNC1 (meta->aio != NULL);

  *R = meta;
  return -2;
}