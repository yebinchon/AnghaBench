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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  process_title ; 
 int /*<<< orphan*/  process_title_lock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(char* buffer, size_t size) {
  size_t len;

  if (buffer == NULL || size == 0)
    return UV_EINVAL;

  FUNC7();

  FUNC0(&process_title_lock);
  /*
   * If the process_title was never read before nor explicitly set,
   * we must query it with getConsoleTitleW
   */
  if (!process_title && FUNC6() == -1) {
    FUNC2(&process_title_lock);
    return FUNC8(FUNC1());
  }

  FUNC3(process_title);
  len = FUNC5(process_title) + 1;

  if (size < len) {
    FUNC2(&process_title_lock);
    return UV_ENOBUFS;
  }

  FUNC4(buffer, process_title, len);
  FUNC2(&process_title_lock);

  return 0;
}