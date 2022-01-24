#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct advert {int ad_id; TYPE_1__* mf; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int len; long long pos; int data; struct aio_connection* aio; struct advert* ad; } ;
typedef  TYPE_1__ core_mf_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_ANCIENT ; 
 int RBuff ; 
 int RBuffEnd ; 
 int active_aio_queries ; 
 int /*<<< orphan*/  aio_read_errors ; 
 long long allocated_metafile_bytes ; 
 int /*<<< orphan*/  allocated_metafiles ; 
 int /*<<< orphan*/  ancient_ads_aio_loaded ; 
 long long ancient_ads_aio_loaded_bytes ; 
 int /*<<< orphan*/  ancient_ads_pending ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ct_aio ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,long long,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 long long idx_bytes ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long long) ; 
 long long idx_metafile_pos ; 
 int /*<<< orphan*/  FUNC5 (int,int,long long) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (struct connection *c, int read_bytes) {
  if (verbosity > 0) {
    FUNC1 (stderr, "onload_ad_metafile(%d,%lld)\n", c, read_bytes);
  }
  struct aio_connection *a = (struct aio_connection *)c;
  core_mf_t *M = (core_mf_t *) a->extra;
  struct advert *A = M->ad;

  FUNC0 (a->basic_type == ct_aio);
  FUNC0 (A->mf == M);
  FUNC0 (M->aio == a);

  if (read_bytes < M->len) {
    aio_read_errors++;
    if (verbosity >= 0) {
      FUNC1 (stderr, "ERROR reading ad %d data from index at position %lld [pending aio queries: %d]: read %d bytes out of %d: %m\n", A->ad_id, M->pos, active_aio_queries, read_bytes, M->len);
    }

    allocated_metafile_bytes -= M->len;
    allocated_metafiles--;
    M->aio = 0;

    FUNC2 (M);
    A->mf = 0;

    return 0;
  }

  M->aio = 0;

  if (verbosity > 0) {
    FUNC1 (stderr, "*** Read ad %d data from index at position %lld: read %d bytes at address %d, magic %08x\n", A->ad_id, M->pos, read_bytes, M->data, * (int *) M->data);
  }

  RBuff = M->data;
  RBuffEnd = RBuff + M->len;
  long long keep_idx_bytes = idx_bytes;
  idx_bytes = M->pos + M->len;

  FUNC4 (M->pos);
  FUNC5 (A->ad_id, 1, M->len);
  FUNC3 ();
  
  FUNC0 (idx_metafile_pos == M->len);

  idx_bytes = keep_idx_bytes;
  RBuffEnd = RBuff = 0;

  A->flags &= ~ADF_ANCIENT;

  ancient_ads_pending--;
  ancient_ads_aio_loaded++;
  ancient_ads_aio_loaded_bytes += M->len;

  allocated_metafile_bytes -= M->len;
  allocated_metafiles--;
  M->aio = 0;

  FUNC2 (M);
  A->mf = 0;

  return 1;
}