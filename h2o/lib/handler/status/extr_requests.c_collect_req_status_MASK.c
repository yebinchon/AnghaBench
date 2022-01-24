#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_collect_req_status_cbdata_t {TYPE_2__* buffer; int /*<<< orphan*/  logconf; } ;
typedef  int /*<<< orphan*/  h2o_req_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ bytes; } ;
struct TYPE_3__ {int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ FUNC2 (TYPE_2__**,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,size_t) ; 

__attribute__((used)) static int FUNC5(h2o_req_t *req, void *_cbdata)
{
    struct st_collect_req_status_cbdata_t *cbdata = _cbdata;

    /* collect log */
    char buf[4096];
    size_t len = sizeof(buf);
    char *logline = FUNC3(cbdata->logconf, req, &len, buf);
    FUNC0(len != 0);
    --len; /* omit trailing LF */

    /* append to buffer */
    if ((FUNC2(&cbdata->buffer, len + 3)).base == NULL) {
        if (logline != buf)
            FUNC1(logline);
        return -1;
    }
    FUNC4(cbdata->buffer->bytes + cbdata->buffer->size, logline, len);
    cbdata->buffer->size += len;

    if (logline != buf)
        FUNC1(logline);

    return 0;
}