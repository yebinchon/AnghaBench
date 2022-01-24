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
struct TYPE_3__ {int max_response; char* response; int /*<<< orphan*/  ctrl_fd; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(knetFile *ftp)
{
#ifndef _WIN32
	unsigned char c;
#else
	char c;
#endif
	int n = 0;
	char *p;
	if (FUNC3(ftp->ctrl_fd, 1) <= 0) return 0;
	while (FUNC1(ftp->ctrl_fd, &c, 1)) { // FIXME: this is *VERY BAD* for unbuffered I/O
		//fputc(c, stderr);
		if (n >= ftp->max_response) {
			ftp->max_response = ftp->max_response? ftp->max_response<<1 : 256;
			ftp->response = (char*)FUNC2(ftp->response, ftp->max_response);
		}
		ftp->response[n++] = c;
		if (c == '\n') {
			if (n >= 4 && FUNC0(ftp->response[0]) && FUNC0(ftp->response[1]) && FUNC0(ftp->response[2])
				&& ftp->response[3] != '-') break;
			n = 0;
			continue;
		}
	}
	if (n < 2) return -1;
	ftp->response[n-2] = 0;
	return FUNC4(ftp->response, &p, 0);
}