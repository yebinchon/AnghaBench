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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int jerry_size_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 scalar_t__ JERRY_ERROR_SYNTAX ; 
 int /*<<< orphan*/  JERRY_FEATURE_ERROR_MESSAGES ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 scalar_t__ SYNTAX_ERROR_CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 char* FUNC11 (char*,size_t*) ; 
 scalar_t__ FUNC12 (char*,char**) ; 

__attribute__((used)) static void
FUNC13 (jerry_value_t error_value) /**< error value */
{
  FUNC0 (FUNC8 (error_value));

  error_value = FUNC3 (error_value, false);
  jerry_value_t err_str_val = FUNC9 (error_value);
  jerry_size_t err_str_size = FUNC2 (err_str_val);
  jerry_char_t err_str_buf[256];

  FUNC6 (error_value);

  if (err_str_size >= 256)
  {
    const char msg[] = "[Error message too long]";
    err_str_size = sizeof (msg) / sizeof (char) - 1;
    FUNC10 (err_str_buf, msg, err_str_size);
  }
  else
  {
    jerry_size_t sz = FUNC7 (err_str_val, err_str_buf, err_str_size);
    FUNC0 (sz == err_str_size);
    err_str_buf[err_str_size] = 0;

    if (FUNC4 (JERRY_FEATURE_ERROR_MESSAGES)
        && FUNC1 (error_value) == JERRY_ERROR_SYNTAX)
    {
      jerry_char_t *string_end_p = err_str_buf + sz;
      uint32_t err_line = 0;
      uint32_t err_col = 0;
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

          err_line = FUNC12 ((char *) current_p, (char **) &current_p);

          current_p++;

          err_col = FUNC12 ((char *) current_p, NULL);
          break;
        }
      } /* for */

      if (err_line != 0 && err_col != 0)
      {
        uint32_t curr_line = 1;

        bool is_printing_context = false;
        uint32_t pos = 0;

        /* Temporarily modify the error message, so we can use the path. */
        *path_str_end_p = '\0';

        size_t source_size;
        const jerry_char_t *source_p = FUNC11 (path_str_p, &source_size);

        /* Revert the error message. */
        *path_str_end_p = ':';

        /* 2. seek and print */
        while (source_p[pos] != '\0')
        {
          if (source_p[pos] == '\n')
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
            FUNC5 (JERRY_LOG_LEVEL_ERROR, "%c", source_p[pos]);
          }

          pos++;
        }

        FUNC5 (JERRY_LOG_LEVEL_ERROR, "\n");

        while (--err_col)
        {
          FUNC5 (JERRY_LOG_LEVEL_ERROR, "~");
        }

        FUNC5 (JERRY_LOG_LEVEL_ERROR, "^\n");
      }
    }
  }

  FUNC5 (JERRY_LOG_LEVEL_ERROR, "Script Error: %s\n", err_str_buf);
  FUNC6 (err_str_val);
}