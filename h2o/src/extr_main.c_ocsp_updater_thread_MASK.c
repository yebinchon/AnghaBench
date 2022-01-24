#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ interval; unsigned int max_failures; int /*<<< orphan*/  cmd; } ;
struct listener_ssl_config_t {char* certificate_file; TYPE_1__ ocsp_stapling; } ;
typedef  int /*<<< orphan*/  h2o_buffer_t ;

/* Variables and functions */
#define  EX_TEMPFAIL 128 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocsp_updater_semaphore ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct listener_ssl_config_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC8(void *_ssl_conf)
{
    struct listener_ssl_config_t *ssl_conf = _ssl_conf;
    time_t next_at = 0, now;
    unsigned fail_cnt = 0;
    int status;
    h2o_buffer_t *resp;

    FUNC0(ssl_conf->ocsp_stapling.interval != 0);

    while (1) {
        /* sleep until next_at */
        if ((now = FUNC6(NULL)) < next_at) {
            time_t sleep_secs = next_at - now;
            FUNC5(sleep_secs < UINT_MAX ? (unsigned)sleep_secs : UINT_MAX);
            continue;
        }
        /* fetch the response */
        FUNC4(&ocsp_updater_semaphore);
        status = FUNC2(ssl_conf->certificate_file, ssl_conf->ocsp_stapling.cmd, &resp);
        FUNC3(&ocsp_updater_semaphore);
        switch (status) {
        case 0: /* success */
            fail_cnt = 0;
            FUNC7(ssl_conf, resp);
            FUNC1(stderr, "[OCSP Stapling] successfully updated the response for certificate file:%s\n",
                    ssl_conf->certificate_file);
            break;
        case EX_TEMPFAIL: /* temporary failure */
            if (fail_cnt == ssl_conf->ocsp_stapling.max_failures) {
                FUNC1(stderr,
                        "[OCSP Stapling] OCSP stapling is temporary disabled due to repeated errors for certificate file:%s\n",
                        ssl_conf->certificate_file);
                FUNC7(ssl_conf, NULL);
            } else {
                FUNC1(stderr,
                        "[OCSP Stapling] reusing old response due to a temporary error occurred while fetching OCSP "
                        "response for certificate file:%s\n",
                        ssl_conf->certificate_file);
                ++fail_cnt;
            }
            break;
        default: /* permanent failure */
            FUNC7(ssl_conf, NULL);
            FUNC1(stderr, "[OCSP Stapling] disabled for certificate file:%s\n", ssl_conf->certificate_file);
            goto Exit;
        }
        /* update next_at */
        next_at = FUNC6(NULL) + ssl_conf->ocsp_stapling.interval;
    }

Exit:
    return NULL;
}