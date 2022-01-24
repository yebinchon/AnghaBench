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
struct evbuffer_overlapped {scalar_t__ write_in_progress; int /*<<< orphan*/  read_in_progress; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  EVBUFFER_MEM_PINNED_W ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer_overlapped*,int /*<<< orphan*/ ) ; 
 struct evbuffer_overlapped* FUNC6 (struct evbuffer*) ; 

void
FUNC7(struct evbuffer *evbuf, ev_ssize_t nBytes)
{
	struct evbuffer_overlapped *buf = FUNC6(evbuf);

	FUNC0(evbuf);
	FUNC1(buf->write_in_progress && !buf->read_in_progress);
	FUNC4(evbuf, 1);
	FUNC3(evbuf, nBytes);
	FUNC5(buf,EVBUFFER_MEM_PINNED_W);
	buf->write_in_progress = 0;
	FUNC2(evbuf);
}