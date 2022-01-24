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
struct MD5Context {int* count; } ;
typedef  int /*<<< orphan*/  PADDING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MD5Context*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct MD5Context *context)
{
	unsigned char bits[8];
	unsigned int idx, padLen;
	unsigned char PADDING[64];

	FUNC2(PADDING, 0, sizeof(PADDING));
	PADDING[0] = 0x80;

	/* Save number of bits */
	FUNC0(bits, context->count, 8);

	/* Pad out to 56 mod 64. */
	idx = (context->count[0] >> 3) & 0x3f;
	padLen = (idx < 56) ? (56 - idx) : (120 - idx);
	FUNC1(context, PADDING, padLen);

	/* Append length (before padding) */
	FUNC1(context, bits, 8);
}