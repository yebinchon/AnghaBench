#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ expires; } ;
struct TYPE_9__ {int /*<<< orphan*/  func; } ;
struct TYPE_13__ {TYPE_2__ timer; TYPE_1__ work; } ;
struct TYPE_12__ {int /*<<< orphan*/  jiffies; int /*<<< orphan*/  status; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  FD_STATUS ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int OLOGSIZE ; 
 int /*<<< orphan*/  command_status ; 
 int /*<<< orphan*/  cont ; 
 int /*<<< orphan*/  current_req ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 scalar_t__ do_floppy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__ fd_timeout ; 
 TYPE_6__ fd_timer ; 
 int /*<<< orphan*/  fdc_busy ; 
 TYPE_3__ floppy_work ; 
 scalar_t__ interruptjiffies ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lasthandler ; 
 int /*<<< orphan*/  lastredo ; 
 TYPE_4__* output_log ; 
 int output_log_pos ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reply_buffer ; 
 int /*<<< orphan*/  resultjiffies ; 
 int /*<<< orphan*/  resultsize ; 
 int /*<<< orphan*/  timeout_message ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;

	FUNC2("\n");
	FUNC2("floppy driver state\n");
	FUNC2("-------------------\n");
	FUNC2("now=%lu last interrupt=%lu diff=%lu last called handler=%ps\n",
		jiffies, interruptjiffies, jiffies - interruptjiffies,
		lasthandler);

	FUNC2("timeout_message=%s\n", timeout_message);
	FUNC2("last output bytes:\n");
	for (i = 0; i < OLOGSIZE; i++)
		FUNC2("%2x %2x %lu\n",
			output_log[(i + output_log_pos) % OLOGSIZE].data,
			output_log[(i + output_log_pos) % OLOGSIZE].status,
			output_log[(i + output_log_pos) % OLOGSIZE].jiffies);
	FUNC2("last result at %lu\n", resultjiffies);
	FUNC2("last redo_fd_request at %lu\n", lastredo);
	FUNC3(KERN_INFO, "", DUMP_PREFIX_NONE, 16, 1,
		       reply_buffer, resultsize, true);

	FUNC2("status=%x\n", FUNC1(FD_STATUS));
	FUNC2("fdc_busy=%lu\n", fdc_busy);
	if (do_floppy)
		FUNC2("do_floppy=%ps\n", do_floppy);
	if (FUNC4(&floppy_work))
		FUNC2("floppy_work.func=%ps\n", floppy_work.func);
	if (FUNC0(&fd_timer))
		FUNC2("delayed work.function=%p expires=%ld\n",
		       fd_timer.work.func,
		       fd_timer.timer.expires - jiffies);
	if (FUNC0(&fd_timeout))
		FUNC2("timer_function=%p expires=%ld\n",
		       fd_timeout.work.func,
		       fd_timeout.timer.expires - jiffies);

	FUNC2("cont=%p\n", cont);
	FUNC2("current_req=%p\n", current_req);
	FUNC2("command_status=%d\n", command_status);
	FUNC2("\n");
}