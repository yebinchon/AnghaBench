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
struct TYPE_2__ {int stop_processing; int /*<<< orphan*/  output_stdout; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
#define  SIGINT 130 
#define  SIGPIPE 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gwsreader ; 
 int /*<<< orphan*/  gwswriter ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (int sig_number)
{
  switch (sig_number) {
  case SIGTERM:
  case SIGINT:
    FUNC2 (stderr, "\nSIGINT caught!\n");
    FUNC2 (stderr, "Closing GoAccess...\n");

    FUNC3 (gwswriter, gwsreader);
    conf.stop_processing = 1;

    if (!conf.output_stdout) {
      FUNC0(EXIT_SUCCESS);
      FUNC1(EXIT_SUCCESS);
    }

    break;
  case SIGPIPE:
    FUNC2 (stderr, "SIGPIPE caught!\n");
    /* ignore it */
    break;
  }
}