#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* jt; } ;
struct TYPE_5__ {unsigned int lc; unsigned int lp; unsigned int pb; } ;
struct TYPE_6__ {int /*<<< orphan*/ * Probs; TYPE_1__ Properties; } ;
typedef  int /*<<< orphan*/  CProb ;
typedef  TYPE_2__ CLzmaDecoderState ;

/* Variables and functions */
 int KERNEL_ENTRY ; 
 unsigned int LZMA_RESULT_OK ; 
 unsigned int FUNC0 (TYPE_2__*,unsigned char*,unsigned int,unsigned int*,unsigned char*,unsigned int,unsigned int*) ; 
 int _binary_vmlinux_lzma_end ; 
 int _binary_vmlinux_lzma_start ; 
 scalar_t__ buffer ; 
 unsigned char* data ; 
 TYPE_3__* gd ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void FUNC4 (int,int,int,int) ; 

void FUNC5(unsigned int arg0, unsigned int arg1,
	unsigned int arg2, unsigned int arg3)
{
	unsigned int i;  /* temp value */
	unsigned int isize; /* compressed size */
	unsigned int osize; /* uncompressed size */
	int argc = arg0;
	char **argv = (char **)arg1;
	char **envp = (char **)arg2;

	CLzmaDecoderState vs;

	data = (unsigned char *)_binary_vmlinux_lzma_start;
	isize = _binary_vmlinux_lzma_end - _binary_vmlinux_lzma_start + 1;

	FUNC3("\nLZMA kernel loader\n");

	FUNC2("lzma data @ %#x - %#x\n", _binary_vmlinux_lzma_start, _binary_vmlinux_lzma_end);
	FUNC2("load addr @ %#x\n\n", KERNEL_ENTRY);
	FUNC2("jump table @ %#x\n", gd->jt[3]);

	/* lzma args */
	i = FUNC1();
	vs.Properties.lc = i % 9, i = i / 9;
	vs.Properties.lp = i % 5, vs.Properties.pb = i / 5;

	vs.Probs = (CProb *)buffer;

	/* skip rest of the LZMA coder property */
	data += 4;

	/* read the lower half of uncompressed size in the header */
	osize = ((unsigned int)FUNC1()) +
		((unsigned int)FUNC1() << 8) +
		((unsigned int)FUNC1() << 16) +
		((unsigned int)FUNC1() << 24);

	/* skip rest of the header (upper half of uncompressed size) */
	data += 4;

	/* decompress kernel */
	FUNC3("\nDecompressing kernel...");
	if ((i = FUNC0(&vs,
	(unsigned char*)data, isize, &isize,
	(unsigned char*)KERNEL_ENTRY, osize, &osize)) == LZMA_RESULT_OK)
	{
		FUNC3("success!\n");

		/* Jump to load address */
//		((void (*)(int a0, int a1, int a2, int a3))KERNEL_ENTRY)(0,0,0,0);
		((void (*)(int a0, int a1, int a2, int a3))KERNEL_ENTRY)(arg0, arg1, arg2, arg3);
	}
	FUNC3("failure!\n");
}