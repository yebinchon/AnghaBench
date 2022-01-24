#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cf_prp ;
typedef  int /*<<< orphan*/  cf_gcm_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 

void FUNC3(const cf_prp *prp, void *prpctx,
                    const uint8_t *plain, size_t nplain,
                    const uint8_t *header, size_t nheader,
                    const uint8_t *nonce, size_t nnonce,
                    uint8_t *cipher, /* the same size as nplain */
                    uint8_t *tag, size_t ntag)
{
  cf_gcm_ctx gcmctx;

  FUNC1(prp, prpctx, &gcmctx, header, nheader, nonce, nnonce);
  FUNC2(&gcmctx, plain, nplain, cipher);
  FUNC0(&gcmctx, tag, ntag);
}