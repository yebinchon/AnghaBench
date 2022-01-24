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
struct st_neverbleed_rsa_exdata_t {int key_index; } ;
struct expbuf_t {int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct expbuf_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct expbuf_t*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct expbuf_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct expbuf_t*,char const*) ; 
 scalar_t__ FUNC5 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (struct expbuf_t*,size_t*) ; 
 scalar_t__ FUNC7 (struct expbuf_t*,size_t*) ; 
 scalar_t__ FUNC8 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct st_neverbleed_rsa_exdata_t**,struct st_neverbleed_thread_data_t**) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC11(const char *cmd, int flen, const unsigned char *from, unsigned char *_to, RSA *rsa, int padding)
{
    struct st_neverbleed_rsa_exdata_t *exdata;
    struct st_neverbleed_thread_data_t *thdata;
    struct expbuf_t buf = {NULL};
    size_t ret;
    unsigned char *to;
    size_t tolen;

    FUNC9(rsa, &exdata, &thdata);

    FUNC4(&buf, cmd);
    FUNC2(&buf, from, flen);
    FUNC3(&buf, exdata->key_index);
    FUNC3(&buf, padding);
    if (FUNC8(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "write error" : "connection closed by daemon");
    FUNC1(&buf);

    if (FUNC5(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "read error" : "connection closed by daemon");
    if (FUNC7(&buf, &ret) != 0 || (to = FUNC6(&buf, &tolen)) == NULL) {
        errno = 0;
        FUNC0("failed to parse response");
    }
    FUNC10(_to, to, tolen);
    FUNC1(&buf);

    return (int)ret;
}