#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; char* size_cmd; char* response; long long file_size; scalar_t__ offset; char* retr; int is_ready; scalar_t__ no_reconnect; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,long long) ; 
 int FUNC8 (char*,char*,long long*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 long long FUNC11 (char const*) ; 

int FUNC12(knetFile *fp)
{
	int ret;
	long long file_size;
	if (fp->fd != -1) {
		FUNC6(fp->fd);
		if (fp->no_reconnect) FUNC2(fp);
	}
	FUNC4(fp);
    FUNC5(fp, fp->size_cmd, 1);
#ifndef _WIN32
    if ( FUNC8(fp->response,"%*d %lld", &file_size) != 1 )
    {
        FUNC0(stderr,"[kftp_connect_file] %s\n", fp->response);
        return -1;
    }
#else
	const char *p = fp->response;
	while (*p != ' ') ++p;
	while (*p < '0' || *p > '9') ++p;
	file_size = strtoint64(p);
#endif
	fp->file_size = file_size;
	if (fp->offset>=0) {
		char tmp[32];
#ifndef _WIN32
		FUNC7(tmp, "REST %lld\r\n", (long long)fp->offset);
#else
		strcpy(tmp, "REST ");
		int64tostr(tmp + 5, fp->offset);
		strcat(tmp, "\r\n");
#endif
		FUNC5(fp, tmp, 1);
	}
	FUNC5(fp, fp->retr, 0);
	FUNC3(fp);
	ret = FUNC2(fp);
	if (ret != 150) {
		FUNC0(stderr, "[kftp_connect_file] %s\n", fp->response);
		FUNC6(fp->fd);
		fp->fd = -1;
		return -1;
	}
	fp->is_ready = 1;
	return 0;
}