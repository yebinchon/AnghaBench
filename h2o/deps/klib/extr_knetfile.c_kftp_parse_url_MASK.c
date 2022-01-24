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
struct TYPE_3__ {int fd; char* host; int no_reconnect; char* retr; char* size_cmd; scalar_t__ seek_offset; int /*<<< orphan*/  port; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  KNF_TYPE_FTP ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char const* FUNC6 (char const*,char*) ; 

knetFile *FUNC7(const char *fn, const char *mode)
{
	knetFile *fp;
	char *p;
	int l;
	if (FUNC6(fn, "ftp://") != fn) return 0;
	for (p = (char*)fn + 6; *p && *p != '/'; ++p);
	if (*p != '/') return 0;
	l = p - fn - 6;
	fp = (knetFile*)FUNC0(1, sizeof(knetFile));
	fp->type = KNF_TYPE_FTP;
	fp->fd = -1;
	/* the Linux/Mac version of socket_connect() also recognizes a port
	 * like "ftp", but the Windows version does not. */
	fp->port = FUNC3("21");
	fp->host = (char*)FUNC0(l + 1, 1);
	if (FUNC2(mode, 'c')) fp->no_reconnect = 1;
	FUNC5(fp->host, fn + 6, l);
	fp->retr = (char*)FUNC0(FUNC4(p) + 8, 1);
	FUNC1(fp->retr, "RETR %s\r\n", p);
    fp->size_cmd = (char*)FUNC0(FUNC4(p) + 8, 1);
    FUNC1(fp->size_cmd, "SIZE %s\r\n", p);
	fp->seek_offset = 0;
	return fp;
}