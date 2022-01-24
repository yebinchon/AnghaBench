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
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  h2o_redis_command_t ;
typedef  int /*<<< orphan*/  h2o_redis_command_cb ;
typedef  int /*<<< orphan*/  h2o_redis_client_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int,char const**,size_t const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

h2o_redis_command_t *FUNC5(h2o_redis_client_t *client, h2o_redis_command_cb cb, void *cb_data, int argc,
                                            const char **argv, const size_t *argvlen)
{
    sds sdscmd;
    int len;
    len = FUNC2(&sdscmd, argc, argv, argvlen);
    if (len < 0) {
        sdscmd = NULL;
        len = 0;
    }

    h2o_redis_command_t *command = FUNC0(client, cb, cb_data, FUNC1(sdscmd));
    FUNC4(client, command, sdscmd, len);
    FUNC3(sdscmd);
    return command;
}