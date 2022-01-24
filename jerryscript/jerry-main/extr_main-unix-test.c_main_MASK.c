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
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_COMMON ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int JERRY_STANDALONE_EXIT_CODE_FAIL ; 
 int JERRY_STANDALONE_EXIT_CODE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14 (int argc,
      char **argv)
{
  FUNC12 ((unsigned) FUNC5 ());
  if (argc <= 1 || (argc == 2 && (!FUNC13 ("-h", argv[1]) || !FUNC13 ("--help", argv[1]))))
  {
    FUNC10 (argv[0]);
    return JERRY_STANDALONE_EXIT_CODE_OK;
  }

  FUNC3 (JERRY_INIT_EMPTY);
  jerry_value_t ret_value = FUNC2 ();

  for (int i = 1; i < argc; i++)
  {
    const char *file_name = argv[i];
    size_t source_size;

    const jerry_char_t *source_p = FUNC11 (file_name, &source_size);

    if (source_p == NULL)
    {
      ret_value = FUNC1 (JERRY_ERROR_COMMON, (jerry_char_t *) "");
      break;
    }
    else
    {
      ret_value = FUNC4 (NULL, 0, source_p, source_size, JERRY_PARSE_NO_OPTS);

      if (!FUNC9 (ret_value))
      {
        jerry_value_t func_val = ret_value;
        ret_value = FUNC8 (func_val);
        FUNC7 (func_val);
      }
    }

    if (FUNC9 (ret_value))
    {
      break;
    }

    FUNC7 (ret_value);
    ret_value = FUNC2 ();
  }

  int ret_code = JERRY_STANDALONE_EXIT_CODE_OK;

  if (FUNC9 (ret_value))
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Unhandled exception: Script Error!\n");
    ret_code = JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  FUNC7 (ret_value);
  FUNC0 ();

  return ret_code;
}