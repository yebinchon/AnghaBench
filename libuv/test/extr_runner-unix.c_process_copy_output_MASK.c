#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stdout_file; } ;
typedef  TYPE_1__ process_info_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(process_info_t* p, FILE* stream) {
  char buf[1024];
  int r;

  r = FUNC2(p->stdout_file, 0, SEEK_SET);
  if (r < 0) {
    FUNC3("fseek");
    return -1;
  }

  /* TODO: what if the line is longer than buf */
  while (FUNC1(buf, sizeof(buf), p->stdout_file) != NULL)
    FUNC4(buf, FUNC5(buf), stream);

  if (FUNC0(p->stdout_file)) {
    FUNC3("read");
    return -1;
  }

  return 0;
}