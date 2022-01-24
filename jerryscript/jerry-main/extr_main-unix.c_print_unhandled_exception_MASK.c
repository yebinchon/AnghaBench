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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int jerry_size_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 scalar_t__ JERRY_ERROR_SYNTAX ; 
 int /*<<< orphan*/  JERRY_FEATURE_ERROR_MESSAGES ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 unsigned int SYNTAX_ERROR_CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* buffer ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,size_t*) ; 
 scalar_t__ FUNC19 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC20 (jerry_value_t error_value) /**< error value */
{
  FUNC0 (!FUNC12 (error_value));

  jerry_char_t err_str_buf[256];

  if (FUNC13 (error_value))
  {
    jerry_value_t stack_str = FUNC1 ((const jerry_char_t *) "stack");
    jerry_value_t backtrace_val = FUNC4 (error_value, stack_str);
    FUNC9 (stack_str);

    if (!FUNC12 (backtrace_val)
        && FUNC11 (backtrace_val))
    {
      FUNC17 ("Exception backtrace:\n");

      uint32_t length = FUNC2 (backtrace_val);

      /* This length should be enough. */
      if (length > 32)
      {
        length = 32;
      }

      for (uint32_t i = 0; i < length; i++)
      {
        jerry_value_t item_val = FUNC5 (backtrace_val, i);

        if (!FUNC12 (item_val)
            && FUNC14 (item_val))
        {
          jerry_size_t str_size = FUNC6 (item_val);

          if (str_size >= 256)
          {
            FUNC17 ("%3u: [Backtrace string too long]\n", i);
          }
          else
          {
            jerry_size_t string_end = FUNC10 (item_val, err_str_buf, str_size);
            FUNC0 (string_end == str_size);
            err_str_buf[string_end] = 0;

            FUNC17 ("%3u: %s\n", i, err_str_buf);
          }
        }

        FUNC9 (item_val);
      }
    }
    FUNC9 (backtrace_val);
  }

  jerry_value_t err_str_val = FUNC15 (error_value);
  jerry_size_t err_str_size = FUNC6 (err_str_val);

  if (err_str_size >= 256)
  {
    const char msg[] = "[Error message too long]";
    err_str_size = sizeof (msg) / sizeof (char) - 1;
    FUNC16 (err_str_buf, msg, err_str_size + 1);
  }
  else
  {
    jerry_size_t string_end = FUNC10 (err_str_val, err_str_buf, err_str_size);
    FUNC0 (string_end == err_str_size);
    err_str_buf[string_end] = 0;

    if (FUNC7 (JERRY_FEATURE_ERROR_MESSAGES)
        && FUNC3 (error_value) == JERRY_ERROR_SYNTAX)
    {
      jerry_char_t *string_end_p = err_str_buf + string_end;
      unsigned int err_line = 0;
      unsigned int err_col = 0;
      char *path_str_p = NULL;
      char *path_str_end_p = NULL;

      /* 1. parse column and line information */
      for (jerry_char_t *current_p = err_str_buf; current_p < string_end_p; current_p++)
      {
        if (*current_p == '[')
        {
          current_p++;

          if (*current_p == '<')
          {
            break;
          }

          path_str_p = (char *) current_p;
          while (current_p < string_end_p && *current_p != ':')
          {
            current_p++;
          }

          path_str_end_p = (char *) current_p++;

          err_line = (unsigned int) FUNC19 ((char *) current_p, (char **) &current_p, 10);

          current_p++;

          err_col = (unsigned int) FUNC19 ((char *) current_p, NULL, 10);
          break;
        }
      } /* for */

      if (err_line != 0 && err_col != 0)
      {
        unsigned int curr_line = 1;

        bool is_printing_context = false;
        unsigned int pos = 0;

        size_t source_size;

        /* Temporarily modify the error message, so we can use the path. */
        *path_str_end_p = '\0';

        FUNC18 (path_str_p, &source_size);

        /* Revert the error message. */
        *path_str_end_p = ':';

        /* 2. seek and print */
        while ((pos < source_size) && (buffer[pos] != '\0'))
        {
          if (buffer[pos] == '\n')
          {
            curr_line++;
          }

          if (err_line < SYNTAX_ERROR_CONTEXT_SIZE
              || (err_line >= curr_line
                  && (err_line - curr_line) <= SYNTAX_ERROR_CONTEXT_SIZE))
          {
            /* context must be printed */
            is_printing_context = true;
          }

          if (curr_line > err_line)
          {
            break;
          }

          if (is_printing_context)
          {
            FUNC8 (JERRY_LOG_LEVEL_ERROR, "%c", buffer[pos]);
          }

          pos++;
        }

        FUNC8 (JERRY_LOG_LEVEL_ERROR, "\n");

        while (--err_col)
        {
          FUNC8 (JERRY_LOG_LEVEL_ERROR, "~");
        }

        FUNC8 (JERRY_LOG_LEVEL_ERROR, "^\n");
      }
    }
  }

  FUNC8 (JERRY_LOG_LEVEL_ERROR, "Script Error: %s\n", err_str_buf);
  FUNC9 (err_str_val);
}