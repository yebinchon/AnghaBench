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
typedef  int uint8_t ;
struct TYPE_5__ {size_t blocksz; } ;
typedef  TYPE_1__ cf_prp ;
typedef  int /*<<< orphan*/  cf_ctr ;
typedef  int /*<<< orphan*/  cf_cmac_stream ;

/* Variables and functions */
 int CF_MAXBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,void*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,size_t) ; 

int FUNC6(const cf_prp *prp, void *prpctx,
                   const uint8_t *cipher, size_t ncipher,
                   const uint8_t *header, size_t nheader,
                   const uint8_t *nonce, size_t nnonce,
                   const uint8_t *tag, size_t ntag,
                   uint8_t *plain) /* the same size as ncipher */
{
  uint8_t NN[CF_MAXBLOCK],
          HH[CF_MAXBLOCK],
          CC[CF_MAXBLOCK];

  cf_cmac_stream cmac;
  FUNC1(&cmac, prp, prpctx);

  /* NN = OMAC_K^0(N) */
  FUNC4(&cmac, 0, nonce, nnonce, NN);

  /* HH = OMAC_K^1(H) */
  FUNC4(&cmac, 1, header, nheader, HH);

  /* CC = OMAC_K^2(C) */
  FUNC4(&cmac, 2, cipher, ncipher, CC);

  uint8_t tt[CF_MAXBLOCK];
  FUNC0(ntag && ntag <= prp->blocksz);
  for (size_t i = 0; i < ntag; i++)
    tt[i] = NN[i] ^ CC[i] ^ HH[i];

  if (!FUNC5(tt, tag, ntag))
    return 1;

  cf_ctr ctr;
  FUNC3(&ctr, prp, prpctx, NN);
  FUNC2(&ctr, cipher, plain, ncipher);
  return 0;
}