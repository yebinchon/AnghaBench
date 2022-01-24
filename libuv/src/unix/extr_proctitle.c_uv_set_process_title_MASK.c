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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_process_title_mutex_once ; 
 TYPE_1__ process_title ; 
 int /*<<< orphan*/  process_title_mutex ; 
 int /*<<< orphan*/  process_title_mutex_once ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(const char* title) {
  FUNC4(&process_title_mutex_once, init_process_title_mutex_once);
  FUNC2(&process_title_mutex);

  if (process_title.len != 0) {
    /* No need to terminate, byte after is always '\0'. */
    FUNC0(process_title.str, title, process_title.len);
    FUNC1(title);
  }

  FUNC3(&process_title_mutex);

  return 0;
}