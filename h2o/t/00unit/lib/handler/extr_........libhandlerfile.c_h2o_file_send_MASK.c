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
struct st_h2o_sendfile_generator_t {int dummy; } ;
typedef  int /*<<< orphan*/  h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 struct st_h2o_sendfile_generator_t* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_sendfile_generator_t*,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(h2o_req_t *req, int status, const char *reason, const char *path, h2o_iovec_t mime_type, int flags)
{
    struct st_h2o_sendfile_generator_t *self;
    int is_dir;

    if ((self = FUNC0(req, path, FUNC2(path), &is_dir, flags)) == NULL)
        return -1;
    /* note: is_dir is not handled */
    FUNC1(self, req, status, reason, mime_type, NULL, 1);
    return 0;
}