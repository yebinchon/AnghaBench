#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t len; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int /*<<< orphan*/  init_process_title_mutex_once ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ process_title ; 
 int /*<<< orphan*/  process_title_mutex ; 
 int /*<<< orphan*/  process_title_mutex_once ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(char* buffer, size_t size) {
  if (buffer == NULL || size == 0)
    return UV_EINVAL;

  FUNC3(&process_title_mutex_once, init_process_title_mutex_once);
  FUNC1(&process_title_mutex);

  if (size <= process_title.len) {
    FUNC2(&process_title_mutex);
    return UV_ENOBUFS;
  }

  if (process_title.len != 0)
    FUNC0(buffer, process_title.str, process_title.len + 1);

  buffer[process_title.len] = '\0';

  FUNC2(&process_title_mutex);

  return 0;
}