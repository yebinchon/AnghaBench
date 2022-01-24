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
typedef  long time_t ;
typedef  int /*<<< orphan*/  MD_CTX ;

/* Variables and functions */
 int MD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int TEST_BLOCK_COUNT ; 
 int TEST_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (long*) ; 

__attribute__((used)) static void FUNC6(void)
{
  MD_CTX context;
  time_t endTime, startTime;
  unsigned char block[TEST_BLOCK_LEN], digest[16];
  unsigned int i;

  FUNC4("MD%d time trial. Digesting %d %d-byte blocks ...",
         MD, TEST_BLOCK_LEN, TEST_BLOCK_COUNT);

  /* Initialize block */
  for (i = 0; i < TEST_BLOCK_LEN; i++)
    block[i] = (unsigned char)(i & 0xff);

  /* Start timer */
  FUNC5(&startTime);

  /* Digest blocks */
  FUNC1(&context);
  for (i = 0; i < TEST_BLOCK_COUNT; i++)
    FUNC3(&context, block, TEST_BLOCK_LEN);
  FUNC0(digest, &context);

  /* Stop timer */
  FUNC5(&endTime);

  FUNC4(" done\n");
  FUNC4("Digest = ");
  FUNC2(digest);
  FUNC4("\nTime = %ld seconds\n", (long)(endTime-startTime));
  FUNC4("Speed = %ld bytes/second\n",
         (long)TEST_BLOCK_LEN * (long)TEST_BLOCK_COUNT/(endTime-startTime));
}