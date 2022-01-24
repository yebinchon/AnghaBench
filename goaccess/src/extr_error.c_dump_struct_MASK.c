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
struct TYPE_2__ {int processed; int offset; int invalid; int piping; int /*<<< orphan*/  resp_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 () ; 
 TYPE_1__* log_data ; 

__attribute__((used)) static void
FUNC2 (FILE * fp)
{
  int pid = FUNC1 ();
  if (!log_data)
    return;

  FUNC0 (fp, "==%d== VALUES AT CRASH POINT\n", pid);
  FUNC0 (fp, "==%d==\n", pid);
  FUNC0 (fp, "==%d== Line number: %u\n", pid, log_data->processed);
  FUNC0 (fp, "==%d== Offset: %u\n", pid, log_data->offset);
  FUNC0 (fp, "==%d== Invalid data: %u\n", pid, log_data->invalid);
  FUNC0 (fp, "==%d== Piping: %d\n", pid, log_data->piping);
  FUNC0 (fp, "==%d== Response size: %llu bytes\n", pid, log_data->resp_size);
  FUNC0 (fp, "==%d==\n", pid);
}