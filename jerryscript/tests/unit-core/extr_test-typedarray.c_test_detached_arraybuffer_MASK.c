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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  types ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_typedarray_type_t ;

/* Variables and functions */
 scalar_t__ JERRY_ERROR_TYPE ; 
#define  JERRY_TYPEDARRAY_FLOAT32 136 
#define  JERRY_TYPEDARRAY_FLOAT64 135 
#define  JERRY_TYPEDARRAY_INT16 134 
#define  JERRY_TYPEDARRAY_INT32 133 
#define  JERRY_TYPEDARRAY_INT8 132 
#define  JERRY_TYPEDARRAY_UINT16 131 
#define  JERRY_TYPEDARRAY_UINT32 130 
#define  JERRY_TYPEDARRAY_UINT8 129 
#define  JERRY_TYPEDARRAY_UINT8CLAMPED 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (void)
{
  static jerry_typedarray_type_t types[] =
  {
    JERRY_TYPEDARRAY_UINT8,
    JERRY_TYPEDARRAY_UINT8CLAMPED,
    JERRY_TYPEDARRAY_INT8,
    JERRY_TYPEDARRAY_UINT16,
    JERRY_TYPEDARRAY_INT16,
    JERRY_TYPEDARRAY_UINT32,
    JERRY_TYPEDARRAY_INT32,
    JERRY_TYPEDARRAY_FLOAT32,
    JERRY_TYPEDARRAY_FLOAT64,
  };

  /* Creating an TypedArray for a detached array buffer with a given length/offset is invalid */
  {
    uint8_t buf[1];
    const uint32_t length = 1;
    jerry_value_t arraybuffer = FUNC1 (length, buf, NULL);
    FUNC0 (!FUNC11 (arraybuffer));
    FUNC0 (FUNC10 (arraybuffer));
    FUNC0 (FUNC5 (arraybuffer) == length);

    jerry_value_t is_detachable = FUNC8 (arraybuffer);
    FUNC0 (!FUNC11 (is_detachable));
    FUNC0 (FUNC6 (is_detachable));
    FUNC9 (is_detachable);

    jerry_value_t res = FUNC4 (arraybuffer);
    FUNC0 (!FUNC11 (res));
    FUNC9 (res);

    for (size_t idx = 0; idx < (sizeof (types) / sizeof (types[0])); idx++)
    {
      jerry_value_t typedarray = FUNC3 (types[idx], arraybuffer, 0, 4);
      FUNC0 (FUNC11 (typedarray));
      FUNC0 (FUNC7 (typedarray) == JERRY_ERROR_TYPE);
      FUNC9 (typedarray);
    }

    FUNC9 (arraybuffer);
  }

  /* Creating an TypedArray for a detached array buffer without length/offset is valid */
  {
    uint8_t buf[1];
    const uint32_t length = 1;
    jerry_value_t arraybuffer = FUNC1 (length, buf, NULL);
    FUNC0 (!FUNC11 (arraybuffer));
    FUNC0 (FUNC10 (arraybuffer));
    FUNC0 (FUNC5 (arraybuffer) == length);

    jerry_value_t is_detachable = FUNC8 (arraybuffer);
    FUNC0 (!FUNC11 (is_detachable));
    FUNC0 (FUNC6 (is_detachable));
    FUNC9 (is_detachable);

    jerry_value_t res = FUNC4 (arraybuffer);
    FUNC0 (!FUNC11 (res));
    FUNC9 (res);

    for (size_t idx = 0; idx < (sizeof (types) / sizeof (types[0])); idx++)
    {
      jerry_value_t typedarray = FUNC2 (types[idx], arraybuffer);
      FUNC0 (FUNC11 (typedarray));
      FUNC0 (FUNC7 (typedarray) == JERRY_ERROR_TYPE);
      FUNC9 (typedarray);
    }

    FUNC9 (arraybuffer);
  }
}