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
typedef  int off_t ;
struct TYPE_3__ {int fd; char* path; char* http_host; scalar_t__ offset; int is_ready; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int FUNC10 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC11(knetFile *fp)
{
	int ret, l = 0;
	char *buf, *p;
	if (fp->fd != -1) FUNC4(fp->fd);
	fp->fd = FUNC7(fp->host, fp->port);
	buf = (char*)FUNC0(0x10000, 1); // FIXME: I am lazy... But in principle, 64KB should be large enough.
	l += FUNC8(buf + l, "GET %s HTTP/1.0\r\nHost: %s\r\n", fp->path, fp->http_host);
    l += FUNC8(buf + l, "Range: bytes=%lld-\r\n", (long long)fp->offset);
	l += FUNC8(buf + l, "\r\n");
	FUNC6(fp->fd, buf, l);
	l = 0;
	while (FUNC5(fp->fd, buf + l, 1)) { // read HTTP header; FIXME: bad efficiency
		if (buf[l] == '\n' && l >= 3)
			if (FUNC9(buf + l - 3, "\r\n\r\n", 4) == 0) break;
		++l;
	}
	buf[l] = 0;
	if (l < 14) { // prematured header
		FUNC4(fp->fd);
		fp->fd = -1;
		return -1;
	}
	ret = FUNC10(buf + 8, &p, 0); // HTTP return code
	if (ret == 200 && fp->offset>0) { // 200 (complete result); then skip beginning of the file
		off_t rest = fp->offset;
		while (rest) {
			off_t l = rest < 0x10000? rest : 0x10000;
			rest -= FUNC3(fp->fd, buf, l);
		}
	} else if (ret != 206 && ret != 200) {
		FUNC2(buf);
		FUNC1(stderr, "[khttp_connect_file] fail to open file (HTTP code: %d).\n", ret);
		FUNC4(fp->fd);
		fp->fd = -1;
		return -1;
	}
	FUNC2(buf);
	fp->is_ready = 1;
	return 0;
}