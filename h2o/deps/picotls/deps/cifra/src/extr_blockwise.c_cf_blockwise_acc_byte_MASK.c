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
typedef  int /*<<< orphan*/  (* cf_blockwise_in_fn ) (void*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC2(uint8_t *partial, size_t *npartial,
                           size_t nblock,
                           uint8_t byte, size_t nbytes,
                           cf_blockwise_in_fn process,
                           void *ctx)
{
  /* only memset the whole of the block once */
  int filled = 0;

  while (nbytes)
  {
    size_t start = *npartial;
    size_t count = FUNC0(nbytes, nblock - start);

    if (!filled)
      FUNC1(partial + start, byte, count);

    if (start == 0 && count == nblock)
      filled = 1;

    if (start + count == nblock)
    {
      process(ctx, partial);
      *npartial = 0;
    } else {
      *npartial += count;
    }

    nbytes -= count;
  }
}