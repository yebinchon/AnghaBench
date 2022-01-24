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

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(process_info_t *p,
                           char* buffer,
                           size_t buffer_len) {
  char* ptr;

  int r = FUNC2(p->stdout_file, 0, SEEK_SET);
  if (r < 0) {
    FUNC3("fseek");
    return -1;
  }

  buffer[0] = '\0';

  while (FUNC1(buffer, buffer_len, p->stdout_file) != NULL) {
    for (ptr = buffer; *ptr && *ptr != '\r' && *ptr != '\n'; ptr++);
    *ptr = '\0';
  }

  if (FUNC0(p->stdout_file)) {
    FUNC3("read");
    buffer[0] = '\0';
    return -1;
  }
  return 0;
}