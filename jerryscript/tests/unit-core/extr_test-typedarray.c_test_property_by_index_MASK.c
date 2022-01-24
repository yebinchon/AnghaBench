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
typedef  int uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  test_int_numbers ;
struct TYPE_3__ {int /*<<< orphan*/  typedarray_type; int /*<<< orphan*/ * constructor_name; } ;
typedef  TYPE_1__ test_entry_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int jerry_typedarray_type_t ;

/* Variables and functions */
#define  JERRY_TYPEDARRAY_FLOAT32 132 
#define  JERRY_TYPEDARRAY_FLOAT64 131 
#define  JERRY_TYPEDARRAY_INT16 130 
#define  JERRY_TYPEDARRAY_INT32 129 
#define  JERRY_TYPEDARRAY_INT8 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 double FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17 (test_entry_t test_entries[])
{
  int test_int_numbers[5] = {-5, -70, 13, 0, 56};
  double test_double_numbers[5] = {-83.153, -35.15, 0, 13.1, 89.8975};
  uint8_t test_uint_numbers[5] = {83, 15, 36, 0, 43};

  for (uint32_t i = 0; test_entries[i].constructor_name != NULL; i++)
  {
    jerry_value_t test_number;
    uint32_t test_numbers_length = sizeof (test_int_numbers) / sizeof (int);
    jerry_value_t typedarray = FUNC5 (test_entries[i].typedarray_type, test_numbers_length);
    jerry_typedarray_type_t type = FUNC10 (typedarray);

    jerry_value_t set_result;
    jerry_value_t get_result;

    switch (type)
    {
      case JERRY_TYPEDARRAY_INT8:
      case JERRY_TYPEDARRAY_INT16:
      case JERRY_TYPEDARRAY_INT32:
      {
        for (uint8_t j = 0; j < test_numbers_length; j++)
        {
          test_number = FUNC3 (test_int_numbers[j]);
          FUNC0 (!FUNC6 (typedarray, j));
          set_result = FUNC12 (typedarray, j, test_number);
          get_result = FUNC9 (typedarray, j);

          FUNC0 (FUNC13 (set_result));
          FUNC0 (FUNC7 (set_result));
          FUNC0 (!FUNC6 (typedarray, j));
          FUNC0 (FUNC8 (get_result) == test_int_numbers[j]);

          FUNC11 (test_number);
          FUNC11 (set_result);
          FUNC11 (get_result);
        }
        break;
      }
      case JERRY_TYPEDARRAY_FLOAT32:
      case JERRY_TYPEDARRAY_FLOAT64:
      {
        for (uint8_t j = 0; j < test_numbers_length; j++)
        {
          test_number = FUNC3 (test_double_numbers[j]);
          FUNC0 (!FUNC6 (typedarray, j));
          set_result = FUNC12 (typedarray, j, test_number);
          get_result = FUNC9 (typedarray, j);

          FUNC0 (FUNC13 (set_result));
          FUNC0 (FUNC7 (set_result));
          FUNC0 (!FUNC6 (typedarray, j));

          double epsilon = FUNC16 (10, -5);
          double get_abs = FUNC1 (FUNC8 (get_result) - test_double_numbers[j]);
          FUNC0 (get_abs < epsilon);

          FUNC11 (test_number);
          FUNC11 (set_result);
          FUNC11 (get_result);

          /* Testing positive and negative infinity */
          for (uint8_t k = 0; k < 2; k++)
          {
            jerry_value_t inf = FUNC4 (k);
            jerry_value_t set_inf = FUNC12 (typedarray, 0, inf);
            FUNC0 (FUNC13 (set_inf));
            FUNC0 (FUNC7 (set_inf));
            jerry_value_t get_inf = FUNC9 (typedarray, 0);
            FUNC0 (FUNC2 (FUNC8 (get_inf)));

            FUNC11 (inf);
            FUNC11 (set_inf);
            FUNC11 (get_inf);
          }
        }
        break;
      }
      default:
      {
        for (uint8_t j = 0; j < test_numbers_length; j++)
        {
          test_number = FUNC3 (test_uint_numbers[j]);
          FUNC0 (!FUNC6 (typedarray, j));
          set_result = FUNC12 (typedarray, j, test_number);
          get_result = FUNC9 (typedarray, j);

          FUNC0 (FUNC13 (set_result));
          FUNC0 (FUNC7 (set_result));
          FUNC0 (!FUNC6 (typedarray, j));
          FUNC0 (FUNC8 (get_result) == test_uint_numbers[j]);

          FUNC11 (test_number);
          FUNC11 (set_result);
          FUNC11 (get_result);
        }
        break;
      }
    }

    jerry_value_t set_undefined = FUNC12 (typedarray, 100, FUNC3 (50));
    FUNC0 (FUNC14 (set_undefined));
    jerry_value_t get_undefined = FUNC9 (typedarray, 100);
    FUNC0 (FUNC15 (get_undefined));

    FUNC11 (set_undefined);
    FUNC11 (get_undefined);
    FUNC11 (typedarray);
  }
}