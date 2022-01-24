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
 int UV_ENOMEM ; 
 int /*<<< orphan*/  init_process_title_mutex_once ; 
 char* process_title ; 
 int /*<<< orphan*/  process_title_mutex ; 
 int /*<<< orphan*/  process_title_mutex_once ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(const char* title) {
  char* new_title;

  new_title = FUNC2(title);
  if (new_title == NULL)
    return UV_ENOMEM;

  FUNC5(&process_title_mutex_once, init_process_title_mutex_once);
  FUNC3(&process_title_mutex);

  FUNC1(process_title);
  process_title = new_title;
  FUNC0("%s", title);

  FUNC4(&process_title_mutex);

  return 0;
}