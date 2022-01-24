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
typedef  int /*<<< orphan*/  (* cf_blockwise_out_fn ) (void*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 

void FUNC3(uint8_t *partial, size_t *npartial, size_t nblock,
                      const void *inp, void *outp, size_t nbytes,
                      cf_blockwise_out_fn process, void *ctx)
{
  const uint8_t *inb = inp;
  uint8_t *outb = outp;

  FUNC1(partial && *npartial < nblock);
  FUNC1(inp || !nbytes);
  FUNC1(process && ctx);

  while (nbytes)
  {
    /* If we're out of material, and need more, produce a block. */
    if (*npartial == 0)
    {
      process(ctx, partial);
      *npartial = nblock;
    }

    size_t offset = nblock - *npartial;
    size_t taken = FUNC0(*npartial, nbytes);
    FUNC2(outb, inb, partial + offset, taken);
    *npartial -= taken;
    nbytes -= taken;
    outb += taken;
    inb += taken;
  }
}