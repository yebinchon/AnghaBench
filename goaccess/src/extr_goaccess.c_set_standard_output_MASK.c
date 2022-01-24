#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ output_format_idx; scalar_t__ daemonize; scalar_t__ real_time_html; } ;
struct TYPE_5__ {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* gwsreader ; 
 int /*<<< orphan*/  gwswriter ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  parsing_spinner ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  int html = 0;
  gwswriter = FUNC4 ();
  gwsreader = FUNC3 ();

  /* HTML */
  if (FUNC2 (NULL, "html", 0) == 0 || conf.output_format_idx == 0)
    html = 1;

  /* Spawn WebSocket server threads */
  if (html && conf.real_time_html) {
    /* open fifo for read */
    if ((gwsreader->fd = FUNC5 ()) == -1) {
      FUNC0 (("Unable to open FIFO for read.\n"));
      return;
    }

    if (conf.daemonize)
      FUNC1 ();
    FUNC7 (gwswriter, gwsreader);
  }
  FUNC6 ();

  /* Spawn progress spinner thread */
  FUNC8 (parsing_spinner);
}