
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct advert {int ad_id; TYPE_1__* mf; int flags; } ;
struct TYPE_3__ {int len; long long pos; int data; struct aio_connection* aio; struct advert* ad; } ;
typedef TYPE_1__ core_mf_t ;


 int ADF_ANCIENT ;
 int RBuff ;
 int RBuffEnd ;
 int active_aio_queries ;
 int aio_read_errors ;
 long long allocated_metafile_bytes ;
 int allocated_metafiles ;
 int ancient_ads_aio_loaded ;
 long long ancient_ads_aio_loaded_bytes ;
 int ancient_ads_pending ;
 int assert (int) ;
 scalar_t__ ct_aio ;
 int fprintf (int ,char*,int,long long,...) ;
 int free (TYPE_1__*) ;
 long long idx_bytes ;
 int idx_check_crc () ;
 int idx_fake_readpos (long long) ;
 long long idx_metafile_pos ;
 int idx_read_ad (int,int,long long) ;
 int stderr ;
 scalar_t__ verbosity ;

int onload_ad_metafile (struct connection *c, int read_bytes) {
  if (verbosity > 0) {
    fprintf (stderr, "onload_ad_metafile(%p,%d)\n", c, read_bytes);
  }
  struct aio_connection *a = (struct aio_connection *)c;
  core_mf_t *M = (core_mf_t *) a->extra;
  struct advert *A = M->ad;

  assert (a->basic_type == ct_aio);
  assert (A->mf == M);
  assert (M->aio == a);

  if (read_bytes < M->len) {
    aio_read_errors++;
    if (verbosity >= 0) {
      fprintf (stderr, "ERROR reading ad %d data from index at position %lld [pending aio queries: %lld]: read %d bytes out of %d: %m\n", A->ad_id, M->pos, active_aio_queries, read_bytes, M->len);
    }

    allocated_metafile_bytes -= M->len;
    allocated_metafiles--;
    M->aio = 0;

    free (M);
    A->mf = 0;

    return 0;
  }

  M->aio = 0;

  if (verbosity > 0) {
    fprintf (stderr, "*** Read ad %d data from index at position %lld: read %d bytes at address %p, magic %08x\n", A->ad_id, M->pos, read_bytes, M->data, * (int *) M->data);
  }

  RBuff = M->data;
  RBuffEnd = RBuff + M->len;
  long long keep_idx_bytes = idx_bytes;
  idx_bytes = M->pos + M->len;

  idx_fake_readpos (M->pos);
  idx_read_ad (A->ad_id, 1, M->len);
  idx_check_crc ();

  assert (idx_metafile_pos == M->len);

  idx_bytes = keep_idx_bytes;
  RBuffEnd = RBuff = 0;

  A->flags &= ~ADF_ANCIENT;

  ancient_ads_pending--;
  ancient_ads_aio_loaded++;
  ancient_ads_aio_loaded_bytes += M->len;

  allocated_metafile_bytes -= M->len;
  allocated_metafiles--;
  M->aio = 0;

  free (M);
  A->mf = 0;

  return 1;
}
