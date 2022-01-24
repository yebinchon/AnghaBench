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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8 (void)
{
  FUNC1 ();

  FUNC5 ();
  FUNC3 ();

  const uint8_t _1_byte_long1[] = "\\u007F";
  const uint8_t _1_byte_long2[] = "\\u0000";
  const uint8_t _1_byte_long3[] = "\\u0065";

  const uint8_t _2_byte_long1[] = "\\u008F";
  const uint8_t _2_byte_long2[] = "\\u00FF";
  const uint8_t _2_byte_long3[] = "\\u07FF";

  const uint8_t _3_byte_long1[] = "\\u08FF";
  const uint8_t _3_byte_long2[] = "\\u0FFF";
  const uint8_t _3_byte_long3[] = "\\uFFFF";

  size_t length;

  /* Test 1-byte-long unicode sequences. */
  length = FUNC7 (FUNC6 (0, _1_byte_long1 + 2, 4));
  FUNC0 (length == 1);

  length = FUNC7 (FUNC6 (0, _1_byte_long2 + 2, 4));
  FUNC0 (length == 1);

  length = FUNC7 (FUNC6 (0, _1_byte_long3 + 2, 4));
  FUNC0 (length == 1);

  /* Test 2-byte-long unicode sequences. */
  length = FUNC7 (FUNC6 (0, _2_byte_long1 + 2, 4));
  FUNC0 (length == 2);

  length = FUNC7 (FUNC6 (0, _2_byte_long2 + 2, 4));
  FUNC0 (length == 2);

  length = FUNC7 (FUNC6 (0, _2_byte_long3 + 2, 4));
  FUNC0 (length == 2);

  /* Test 3-byte-long unicode sequences. */
  length = FUNC7 (FUNC6 (0, _3_byte_long1 + 2, 4));
  FUNC0 (length != 2);

  length = FUNC7 (FUNC6 (0, _3_byte_long2 + 2, 4));
  FUNC0 (length == 3);

  length = FUNC7 (FUNC6 (0, _3_byte_long3 + 2, 4));
  FUNC0 (length == 3);

  FUNC2 ();
  FUNC4 ();

  return 0;
}