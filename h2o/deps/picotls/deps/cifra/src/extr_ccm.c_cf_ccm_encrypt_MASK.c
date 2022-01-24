#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_5__ {size_t blocksz; } ;
typedef  TYPE_1__ cf_prp ;
typedef  int /*<<< orphan*/  cf_ctr ;
typedef  int /*<<< orphan*/  cf_cbcmac_stream ;

/* Variables and functions */
 int CF_MAXBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,size_t,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__ const*,void*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(const cf_prp *prp, void *prpctx,
                    const uint8_t *plain, size_t nplain, size_t L,
                    const uint8_t *header, size_t nheader,
                    const uint8_t *nonce, size_t nnonce,
                    uint8_t *cipher,
                    uint8_t *tag, size_t ntag)
{
  uint8_t block[CF_MAXBLOCK];

  FUNC2(ntag >= 4 && ntag <= 16 && ntag % 2 == 0);
  FUNC2(L >= 2 && L <= 8);
  FUNC2(nnonce == prp->blocksz - L - 1);

  cf_cbcmac_stream cm;
  FUNC4(&cm, prp, prpctx);

  /* Add first block. */
  FUNC1(&cm, block, prp->blocksz,
             nonce, nnonce,
             L, nplain, nheader, ntag);

  /* Add AAD with length prefix, if present. */
  if (nheader)
    FUNC0(&cm, block, header, nheader);

  /* Add message. */
  FUNC6(&cm, plain, nplain);
  FUNC11(&cm);

  /* Finish tag. */
  FUNC5(&cm, block);

  /* Start encryption. */
  /* Construct A_0 */
  uint8_t ctr_nonce[CF_MAXBLOCK];
  FUNC3(ctr_nonce, L, nonce, nnonce);

  cf_ctr ctr;
  FUNC9(&ctr, prp, prpctx, ctr_nonce);
  FUNC8(&ctr, prp->blocksz - L, L);

  /* Encrypt tag first. */
  FUNC7(&ctr, block, block, prp->blocksz);
  FUNC10(tag, block, ntag);

  /* Then encrypt message. */
  FUNC7(&ctr, plain, cipher, nplain);
}