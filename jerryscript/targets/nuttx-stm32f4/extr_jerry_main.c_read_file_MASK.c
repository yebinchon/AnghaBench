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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const uint8_t *
FUNC9 (const char *file_name, /**< source code */
           size_t *out_size_p) /**< [out] number of bytes successfully read from source */
{
  FILE *file = FUNC1 (file_name, "r");
  if (file == NULL)
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Error: cannot open file: %s\n", file_name);
    return NULL;
  }

  int fseek_status = FUNC4 (file, 0, SEEK_END);
  if (fseek_status != 0)
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Failed to seek (error: %d)\n", fseek_status);
    FUNC0 (file);
    return NULL;
  }

  long script_len = FUNC5 (file);
  if (script_len < 0)
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Failed to get the file size(error %ld)\n", script_len);
    FUNC0 (file);
    return NULL;
  }

  FUNC8 (file);

  uint8_t *buffer = (uint8_t *) FUNC7 (script_len);

  if (buffer == NULL)
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Out of memory error\n");
    FUNC0 (file);
    return NULL;
  }

  size_t bytes_read = FUNC2 (buffer, 1u, script_len, file);

  if (!bytes_read || bytes_read != script_len)
  {
    FUNC6 (JERRY_LOG_LEVEL_ERROR, "Error: failed to read file: %s\n", file_name);
    FUNC3 ((void*) buffer);

    FUNC0 (file);
    return NULL;
  }

  FUNC0 (file);

  *out_size_p = bytes_read;
  return (const uint8_t *) buffer;
}