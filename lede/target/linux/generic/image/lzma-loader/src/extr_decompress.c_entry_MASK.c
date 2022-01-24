#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int lc; unsigned int lp; unsigned int pb; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Probs; TYPE_1__ Properties; } ;
struct TYPE_7__ {int /*<<< orphan*/  Read; } ;
typedef  TYPE_2__ ILzmaInCallback ;
typedef  int /*<<< orphan*/  CProb ;
typedef  TYPE_3__ CLzmaDecoderState ;

/* Variables and functions */
 scalar_t__ KERNEL_ENTRY ; 
 unsigned int LZMA_RESULT_OK ; 
 unsigned int FUNC0 (TYPE_3__*,TYPE_2__*,unsigned char*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ buffer ; 
 int /*<<< orphan*/  data ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  lzma_start ; 
 int /*<<< orphan*/  read_byte ; 
 void FUNC4 (int,int,int,int) ; 

void FUNC5(unsigned long icache_size, unsigned long icache_lsize, 
	unsigned long dcache_size, unsigned long dcache_lsize)
{
	unsigned int i;  /* temp value */
	unsigned int osize; /* uncompressed size */
	volatile unsigned int arg0, arg1, arg2, arg3;

	/* restore argument registers */
	__asm__ __volatile__ ("ori %0, $12, 0":"=r"(arg0));
	__asm__ __volatile__ ("ori %0, $13, 0":"=r"(arg1));
	__asm__ __volatile__ ("ori %0, $14, 0":"=r"(arg2));
	__asm__ __volatile__ ("ori %0, $15, 0":"=r"(arg3));

	ILzmaInCallback callback;
	CLzmaDecoderState vs;
	callback.Read = read_byte;

	data = lzma_start;

	/* lzma args */
	i = FUNC3();
	vs.Properties.lc = i % 9, i = i / 9;
	vs.Properties.lp = i % 5, vs.Properties.pb = i / 5;

	vs.Probs = (CProb *)buffer;

	/* skip rest of the LZMA coder property */
	for (i = 0; i < 4; i++)
		FUNC3();

	/* read the lower half of uncompressed size in the header */
	osize = ((unsigned int)FUNC3()) +
		((unsigned int)FUNC3() << 8) +
		((unsigned int)FUNC3() << 16) +
		((unsigned int)FUNC3() << 24);

	/* skip rest of the header (upper half of uncompressed size) */
	for (i = 0; i < 4; i++) 
		FUNC3();

	/* decompress kernel */
	if ((i = FUNC0(&vs, &callback,
	(unsigned char*)KERNEL_ENTRY, osize, &osize)) == LZMA_RESULT_OK)
	{
		FUNC1(dcache_size, dcache_lsize);
		FUNC2(icache_size, icache_lsize);

		/* Jump to load address */
		((void (*)(int a0, int a1, int a2, int a3)) KERNEL_ENTRY)(arg0, arg1, arg2, arg3);
	}
}