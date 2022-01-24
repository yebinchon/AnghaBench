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
struct st_neverbleed_thread_data_t {int /*<<< orphan*/  fd; } ;
struct st_neverbleed_rsa_exdata_t {int /*<<< orphan*/  key_index; } ;
struct expbuf_t {int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct expbuf_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct expbuf_t*,char*) ; 
 scalar_t__ FUNC4 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct expbuf_t*,size_t*) ; 
 scalar_t__ FUNC6 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct st_neverbleed_rsa_exdata_t**,struct st_neverbleed_thread_data_t**) ; 

__attribute__((used)) static int FUNC8(RSA *rsa)
{
    struct st_neverbleed_rsa_exdata_t *exdata;
    struct st_neverbleed_thread_data_t *thdata;

    FUNC7(rsa, &exdata, &thdata);

    struct expbuf_t buf = {NULL};
    size_t ret;

    FUNC3(&buf, "del_rsa_key");
    FUNC2(&buf, exdata->key_index);
    if (FUNC6(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "write error" : "connection closed by daemon");
    FUNC1(&buf);

    if (FUNC4(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "read error" : "connection closed by daemon");
    if (FUNC5(&buf, &ret) != 0) {
        errno = 0;
        FUNC0("failed to parse response");
    }
    FUNC1(&buf);

    return (int)ret;
}