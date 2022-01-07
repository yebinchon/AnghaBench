
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int volume_t ;
struct lev_storage_file {int dummy; } ;
struct TYPE_15__ {size_t dir_id; int fd_rdonly; } ;
typedef TYPE_1__ storage_binlog_file_t ;
struct TYPE_16__ {long long offset; int local_id; int size; scalar_t__ corrupted; int * aio; int refcnt; int * data; struct TYPE_16__* hnext; TYPE_1__* B; } ;
typedef TYPE_2__ metafile_t ;
struct TYPE_14__ {scalar_t__ pending_aio_connections; } ;


 TYPE_13__* Dirs ;
 TYPE_2__** M ;
 int STORAGE_ERR_OPEN ;
 int STORAGE_ERR_OUT_OF_MEMORY ;
 int STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS ;
 int add_use (TYPE_2__*) ;
 int assert (int) ;
 TYPE_1__* choose_reading_binlog (int *,long long,long long,int ) ;
 int * create_aio_read_connection (int ,int *,long long,int const,int *,TYPE_2__*) ;
 int ct_metafile_aio ;
 TYPE_2__* get_meta_f (long long,int,int*,int ) ;
 TYPE_2__* malloc (int const) ;
 scalar_t__ max_aio_connections_per_disk ;
 int memset (TYPE_2__*,int ,int) ;
 int meta_header_size ;
 int reuse (TYPE_2__*) ;
 int unload_metafiles (int) ;
 int vkprintf (int,char*,long long,int,int,long long) ;

int metafile_load (volume_t *V, metafile_t **R, storage_binlog_file_t **PB, long long volume_id, int local_id, int filesize, long long offset) {
  *R = ((void*)0);
  *PB = ((void*)0);
  vkprintf (3, "load_metafile (volume_id = %lld, local_id = %d, filesize = %d, offset = %lld)\n", volume_id, local_id, filesize, offset);
  int h;
  metafile_t *meta = get_meta_f (volume_id, local_id, &h, 0);
  if (meta != ((void*)0)) {
    *R = meta;
    reuse (meta);
    if (meta->aio) {
      return -2;
    }
    return 0;
  }
  storage_binlog_file_t *B = *PB = choose_reading_binlog (V, offset, offset + sizeof (struct lev_storage_file) + filesize, 0);
  if (B == ((void*)0)) {
    return STORAGE_ERR_OPEN;
  }
  if (max_aio_connections_per_disk && Dirs[B->dir_id].pending_aio_connections >= max_aio_connections_per_disk) {
    return STORAGE_ERR_TOO_MANY_AIO_CONNECTIONS;
  }
  unload_metafiles (0);
  unload_metafiles (1);
  const int meta_size = filesize + meta_header_size;
  meta = malloc (meta_size);
  if (meta == ((void*)0)) {
    return STORAGE_ERR_OUT_OF_MEMORY;
  }
  memset (meta, 0, sizeof (*meta));
  meta->B = B;
  meta->offset = offset;
  meta->local_id = local_id;
  meta->size = meta_size;

  meta->hnext = M[h];
  assert (meta->corrupted == 0);
  M[h] = meta;
  add_use (meta);

  const int sz = filesize + sizeof (struct lev_storage_file);
  meta->aio = create_aio_read_connection (B->fd_rdonly, &meta->data[0], offset, sz, &ct_metafile_aio, meta);
  Dirs[B->dir_id].pending_aio_connections++;
  meta->refcnt++;
  assert (meta->aio != ((void*)0));

  *R = meta;
  return -2;
}
