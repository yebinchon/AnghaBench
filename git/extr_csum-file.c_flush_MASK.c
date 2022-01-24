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
struct hashfile {scalar_t__ check_fd; int total; int /*<<< orphan*/  name; int /*<<< orphan*/  tp; int /*<<< orphan*/  fd; } ;
typedef  unsigned int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (void const*,unsigned char*,unsigned int) ; 
 unsigned int FUNC4 (scalar_t__,unsigned char*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct hashfile *f, const void *buf, unsigned int count)
{
	if (0 <= f->check_fd && count)  {
		unsigned char check_buffer[8192];
		ssize_t ret = FUNC4(f->check_fd, check_buffer, count);

		if (ret < 0)
			FUNC1("%s: sha1 file read error", f->name);
		if (ret != count)
			FUNC0("%s: sha1 file truncated", f->name);
		if (FUNC3(buf, check_buffer, count))
			FUNC0("sha1 file '%s' validation error", f->name);
	}

	for (;;) {
		int ret = FUNC5(f->fd, buf, count);
		if (ret > 0) {
			f->total += ret;
			FUNC2(f->tp, f->total);
			buf = (char *) buf + ret;
			count -= ret;
			if (count)
				continue;
			return;
		}
		if (!ret)
			FUNC0("sha1 file '%s' write error. Out of diskspace", f->name);
		FUNC1("sha1 file '%s' write error", f->name);
	}
}