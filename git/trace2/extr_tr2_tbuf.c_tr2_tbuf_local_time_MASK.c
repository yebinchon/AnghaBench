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
typedef  int /*<<< orphan*/  time_t ;
struct tr2_tbuf {int /*<<< orphan*/  buf; } ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

void FUNC3(struct tr2_tbuf *tb)
{
	struct timeval tv;
	struct tm tm;
	time_t secs;

	FUNC0(&tv, NULL);
	secs = tv.tv_sec;
	FUNC1(&secs, &tm);

	FUNC2(tb->buf, sizeof(tb->buf), "%02d:%02d:%02d.%06ld", tm.tm_hour,
		  tm.tm_min, tm.tm_sec, (long)tv.tv_usec);
}