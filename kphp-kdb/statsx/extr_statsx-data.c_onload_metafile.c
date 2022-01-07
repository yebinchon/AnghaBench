
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metafile {int size; int flags; struct aio_connection* aio; scalar_t__ data; int cnt; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;


 int assert (int) ;
 scalar_t__ ct_aio ;
 int fprintf (int ,char*,...) ;
 int onload_counter (scalar_t__,int,int ,int ) ;
 int stderr ;
 int tot_aio_fails ;
 int tot_aio_loaded_bytes ;
 int tot_user_metafile_bytes ;
 int tot_user_metafiles ;
 int verbosity ;
 int zzfree (scalar_t__,int) ;

int onload_metafile (struct connection *c, int read_bytes) {
  if (verbosity > 2) {
    fprintf (stderr, "onload_metafile(%p,%d)\n", c, read_bytes);
  }

  struct aio_connection *a = (struct aio_connection *)c;
  struct metafile *meta = (struct metafile *) a->extra;

  assert (a->basic_type == ct_aio);
  assert (meta != ((void*)0));

  if (meta->aio != a) {
    fprintf (stderr, "assertion (meta->aio == a) will fail\n");
    fprintf (stderr, "%p != %p\n", meta->aio, a);
  }

  assert (meta->aio == a);

  if (read_bytes != meta->size) {
    if (verbosity >= 0) {
      fprintf (stderr, "ERROR reading metafile (counter %lld): read %d bytes out of %lld: %m\n", meta->cnt, read_bytes, meta->size);
    }
    zzfree (meta->data, meta->size);
    meta->data = 0;
    meta->aio = 0;
    tot_aio_fails ++;
    meta->flags |= 1;
    return 0;
  }
  assert(read_bytes == meta->size);

  tot_aio_loaded_bytes += read_bytes;



  if (verbosity > 2) {
    fprintf (stderr, "*** Read metafile: read %d bytes\n", read_bytes);
  }

  onload_counter (meta->data, meta->size, meta->cnt, 0);

  zzfree(meta->data, meta->size);
  meta->data = 0;

  meta->aio = ((void*)0);
  meta->flags &= ~1;

  tot_user_metafile_bytes += meta->size;
  tot_user_metafiles++;

  return 1;
}
