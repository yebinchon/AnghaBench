#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* encrypt ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ cf_prp ;
struct TYPE_7__ {int* Y0; int /*<<< orphan*/  e_Y0; int /*<<< orphan*/  ctr; int /*<<< orphan*/  gh; } ;
typedef  TYPE_2__ cf_gcm_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,void*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC11(const cf_prp *prp, void *prpctx, cf_gcm_ctx *gcmctx,
                         const uint8_t *header, size_t nheader,
                         const uint8_t *nonce, size_t nnonce)
{
  uint8_t H[16] = { 0 };

  /* H = E_K(0^128) */
  prp->encrypt(prpctx, H, H);

  /* Produce CTR nonce, Y_0:
   *
   * if len(IV) == 96
   *   Y_0 = IV || 0^31 || 1
   * otherwise
   *   Y_0 = GHASH(H, {}, IV)
   */

  if (nnonce == 12)
  {
    FUNC8(gcmctx->Y0, nonce, nnonce);
    gcmctx->Y0[12] = gcmctx->Y0[13] = gcmctx->Y0[14] = 0x00;
    gcmctx->Y0[15] = 0x01;
  } else {
    FUNC6(&gcmctx->gh, H);
    FUNC4(&gcmctx->gh, nonce, nnonce);
    FUNC5(&gcmctx->gh, gcmctx->Y0);
  }

  /* Hash AAD */
  FUNC6(&gcmctx->gh, H);
  FUNC3(&gcmctx->gh, header, nheader);

  /* Produce ciphertext */
  FUNC9(gcmctx->e_Y0, 0, sizeof(gcmctx->e_Y0));
  FUNC2(&gcmctx->ctr, prp, prpctx, gcmctx->Y0);
  FUNC1(&gcmctx->ctr, 12, 4); /* counter is 2^32 */
  FUNC0(&gcmctx->ctr, gcmctx->e_Y0, gcmctx->e_Y0, sizeof gcmctx->e_Y0); /* first block is tag offset */

  FUNC7(H, sizeof H);
}