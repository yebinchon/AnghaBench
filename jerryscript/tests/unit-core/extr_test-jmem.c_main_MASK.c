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
typedef  size_t uint8_t ;

/* Variables and functions */
 size_t BASIC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,size_t) ; 
 size_t* FUNC7 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9 (void)
{
  FUNC1 ();

  FUNC8 ();
  FUNC3 ();

  {
    uint8_t *block1_p = (uint8_t *) FUNC5 (BASIC_SIZE);
    uint8_t *block2_p = (uint8_t *) FUNC5 (BASIC_SIZE);
    uint8_t *block3_p = (uint8_t *) FUNC5 (BASIC_SIZE);

    /* [block1 64] [block2 64] [block3 64] [...] */

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      block2_p[i] = i;
    }

    /* Realloc by moving */
    block2_p = FUNC7 (block2_p, BASIC_SIZE, BASIC_SIZE * 2);

    /* [block1 64] [free 64] [block3 64] [block2 128] [...] */

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      FUNC0 (block2_p[i] == i);
    }

    for (uint8_t i = BASIC_SIZE; i < BASIC_SIZE * 2; i++)
    {
      block2_p[i] = i;
    }

    uint8_t *block4_p = (uint8_t *) FUNC5 (BASIC_SIZE * 2);

    /* [block1 64] [free 64] [block3 64] [block2 128] [block4 128] [...] */

    FUNC6 (block3_p, BASIC_SIZE);

    /* [block1 64] [free 128] [block2 128] [block4 128] [...] */

    /* Realloc by extending front */
    block2_p = (uint8_t *) FUNC7 (block2_p, BASIC_SIZE * 2, BASIC_SIZE * 3);

    /* [block1 64] [free 64] [block2 192] [block4 128] [...] */

    for (uint8_t i = 0; i < BASIC_SIZE * 2; i++)
    {
      FUNC0 (block2_p[i] == i);
    }

    /* Shrink */
    block2_p = (uint8_t *) FUNC7 (block2_p, BASIC_SIZE * 3, BASIC_SIZE);

    /* [block1 64] [free 64] [block2 64] [free 128] [block4 128] [...] */

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      FUNC0 (block2_p[i] == i);
    }

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      block1_p[i] = i;
    }

    /* Grow in place */
    block1_p = (uint8_t *) FUNC7 (block1_p, BASIC_SIZE, BASIC_SIZE * 2);

    /* [block1 128] [block2 64] [free 128] [block4 128] [...] */

    for (uint8_t i = 0; i < BASIC_SIZE; i++)
    {
      FUNC0 (block1_p[i] == i);
    }

    FUNC6 (block1_p, BASIC_SIZE * 2);
    FUNC6 (block2_p, BASIC_SIZE);
    FUNC6 (block4_p, BASIC_SIZE * 2);
  }

  FUNC2 ();
  FUNC4 ();

  return 0;
}