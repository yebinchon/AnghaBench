#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT4 ;
struct TYPE_3__ {int* count; unsigned char const* buffer; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  POINTER ;
typedef  TYPE_1__ MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(MD4_CTX *context, const unsigned char *input, unsigned int inputLen)
/* context:  context */
/* input:    input block */
/* inputlen: length of input block */
{
  unsigned int i, index, partLen;

  /* Compute number of bytes mod 64 */
  index = (unsigned int)((context->count[0] >> 3) & 0x3F);

  /* Update number of bits */
  if ((context->count[0] += ((UINT4)inputLen << 3)) < ((UINT4)inputLen << 3)) {
    context->count[1]++;
  }
  context->count[1] += ((UINT4)inputLen >> 29);
  partLen = 64 - index;

  /* Transform as many times as possible.
   */
  if (inputLen >= partLen) {
    FUNC1((POINTER)&context->buffer[index], (POINTER)input, partLen);
    FUNC0 (context->state, context->buffer);

    for (i = partLen; i + 63 < inputLen; i += 64) {
      FUNC0(context->state, &input[i]);
    }

    index = 0;
  } else {
    i = 0;
  }

  /* Buffer remaining input */
  FUNC1((POINTER)&context->buffer[index], (POINTER)&input[i], inputLen - i);
}