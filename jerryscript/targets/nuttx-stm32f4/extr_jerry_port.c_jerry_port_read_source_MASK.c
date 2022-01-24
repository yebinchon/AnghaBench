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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (size_t) ; 

uint8_t *
FUNC7 (const char *file_name_p, /**< file name */
                        size_t *out_size_p) /**< [out] read bytes */
{
  FILE *file_p = FUNC1 (file_name_p, "rb");

  if (file_p == NULL)
  {
    FUNC5 (JERRY_LOG_LEVEL_ERROR, "Error: failed to open file: %s\n", file_name_p);
    return NULL;
  }

  size_t file_size = FUNC4 (file_p);
  uint8_t *buffer_p = (uint8_t *) FUNC6 (file_size);

  if (buffer_p == NULL)
  {
    FUNC0 (file_p);

    FUNC5 (JERRY_LOG_LEVEL_ERROR, "Error: failed to allocate memory for module");
    return NULL;
  }

  size_t bytes_read = FUNC2 (buffer_p, 1u, file_size, file_p);

  if (!bytes_read)
  {
    FUNC0 (file_p);
    FUNC3 (buffer_p);

    FUNC5 (JERRY_LOG_LEVEL_ERROR, "Error: failed to read file: %s\n", file_name_p);
    return NULL;
  }

  FUNC0 (file_p);
  *out_size_p = bytes_read;

  return buffer_p;
}