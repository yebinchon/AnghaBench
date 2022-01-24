#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ off_t ;
struct TYPE_6__ {int fd; scalar_t__ type; scalar_t__ is_ready; int /*<<< orphan*/  offset; int /*<<< orphan*/  no_reconnect; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ KNF_TYPE_FTP ; 
 scalar_t__ KNF_TYPE_HTTP ; 
 scalar_t__ KNF_TYPE_LOCAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (int,void*,scalar_t__) ; 

off_t FUNC5(knetFile *fp, void *buf, off_t len)
{
	off_t l = 0;
	if (fp->fd == -1) return 0;
	if (fp->type == KNF_TYPE_FTP) {
		if (fp->is_ready == 0) {
			if (!fp->no_reconnect) FUNC1(fp);
			FUNC0(fp);
		}
	} else if (fp->type == KNF_TYPE_HTTP) {
		if (fp->is_ready == 0)
			FUNC2(fp);
	}
	if (fp->type == KNF_TYPE_LOCAL) { // on Windows, the following block is necessary; not on UNIX
		off_t rest = len, curr;
		while (rest) {
			do {
				curr = FUNC4(fp->fd, buf + l, rest);
			} while (curr < 0 && EINTR == errno);
			if (curr < 0) return -1;
			if (curr == 0) break;
			l += curr; rest -= curr;
		}
	} else l = FUNC3(fp->fd, buf, len);
	fp->offset += l;
	return l;
}