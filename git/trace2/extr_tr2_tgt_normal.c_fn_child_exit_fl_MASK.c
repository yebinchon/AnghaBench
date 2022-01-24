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
typedef  scalar_t__ uint64_t ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(const char *file, int line,
			     uint64_t us_elapsed_absolute, int cid, int pid,
			     int code, uint64_t us_elapsed_child)
{
	struct strbuf buf_payload = STRBUF_INIT;
	double elapsed = (double)us_elapsed_child / 1000000.0;

	FUNC1(&buf_payload, "child_exit[%d] pid:%d code:%d elapsed:%.6f",
		    cid, pid, code, elapsed);
	FUNC0(file, line, &buf_payload);
	FUNC2(&buf_payload);
}