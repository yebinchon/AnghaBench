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
typedef  int /*<<< orphan*/  cf_blockwise_in_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 

void FUNC2(uint8_t *partial, size_t *npartial,
                          size_t nblock,
                          uint8_t fbyte, uint8_t mbyte, uint8_t lbyte,
                          size_t nbytes,
                          cf_blockwise_in_fn process,
                          void *ctx)
{

  switch (nbytes)
  {
    case 0: break;
    case 1: fbyte ^= lbyte;
            FUNC1(partial, npartial, nblock, &fbyte, 1, process, ctx);
            break;
    case 2:
            FUNC1(partial, npartial, nblock, &fbyte, 1, process, ctx);
            FUNC1(partial, npartial, nblock, &lbyte, 1, process, ctx);
            break;
    default:
            FUNC1(partial, npartial, nblock, &fbyte, 1, process, ctx);

            /* If the middle and last bytes differ, then process the last byte separately.
             * Otherwise, just extend the middle block size. */
            if (lbyte != mbyte)
            {
              FUNC0(partial, npartial, nblock, mbyte, nbytes - 2, process, ctx);
              FUNC1(partial, npartial, nblock, &lbyte, 1, process, ctx);
            } else {
              FUNC0(partial, npartial, nblock, mbyte, nbytes - 1, process, ctx);
            }

            break;
  }
}