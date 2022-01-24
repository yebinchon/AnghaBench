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

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int /*<<< orphan*/  init_process_title_mutex_once ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * process_title ; 
 int /*<<< orphan*/  process_title_mutex ; 
 int /*<<< orphan*/  process_title_mutex_once ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(char* buffer, size_t size) {
  size_t len;

  if (buffer == NULL || size == 0)
    return UV_EINVAL;

  FUNC4(&process_title_mutex_once, init_process_title_mutex_once);
  FUNC2(&process_title_mutex);

  if (process_title != NULL) {
    len = FUNC1(process_title) + 1;

    if (size < len) {
      FUNC3(&process_title_mutex);
      return UV_ENOBUFS;
    }

    FUNC0(buffer, process_title, len);
  } else {
    len = 0;
  }

  FUNC3(&process_title_mutex);

  buffer[len] = '\0';

  return 0;
}