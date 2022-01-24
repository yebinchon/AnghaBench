#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_logconf_t ;
struct TYPE_4__ {int fd; int /*<<< orphan*/ * logconf; } ;
typedef  TYPE_1__ h2o_access_log_filehandle_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_dispose_handle ; 

h2o_access_log_filehandle_t *FUNC5(const char *path, const char *fmt, int escape)
{
    h2o_logconf_t *logconf;
    int fd;
    h2o_access_log_filehandle_t *fh;
    char errbuf[256];

    /* default to combined log format */
    if (fmt == NULL)
        fmt = "%h %l %u %t \"%r\" %s %b \"%{Referer}i\" \"%{User-agent}i\"";
    if ((logconf = FUNC2(fmt, escape, errbuf)) == NULL) {
        FUNC1("%s\n", errbuf);
        return NULL;
    }

    /* open log file */
    if ((fd = FUNC0(path)) == -1) {
        FUNC3(logconf);
        return NULL;
    }

    fh = FUNC4(NULL, sizeof(*fh), on_dispose_handle);
    fh->logconf = logconf;
    fh->fd = fd;
    return fh;
}