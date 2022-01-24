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
struct sockaddr_un {int dummy; } ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
typedef  int socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_socketpool_target_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  H2O_SOCKETPOOL_TYPE_NAMED ; 
 int /*<<< orphan*/  H2O_SOCKETPOOL_TYPE_SOCKADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,struct sockaddr_un*) ; 
 char const* h2o_url_host_to_sun_err_is_not_unix_socket ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 

h2o_socketpool_target_type_t FUNC6(h2o_url_t *url, struct sockaddr_storage *sa, socklen_t *salen)
{
    FUNC5(sa, 0, sizeof(*sa));
    const char *to_sun_err = FUNC3(url->host, (struct sockaddr_un *)sa);
    if (to_sun_err == h2o_url_host_to_sun_err_is_not_unix_socket) {
        sa->ss_family = AF_INET;
        struct sockaddr_in *sin = (struct sockaddr_in *)sa;
        *salen = sizeof(*sin);

        if (FUNC1(url->host, &sin->sin_addr) == 0) {
            sin->sin_port = FUNC4(FUNC2(url));
            return H2O_SOCKETPOOL_TYPE_SOCKADDR;
        } else {
            return H2O_SOCKETPOOL_TYPE_NAMED;
        }
    } else {
        FUNC0(to_sun_err == NULL);
        *salen = sizeof(struct sockaddr_un);
        return H2O_SOCKETPOOL_TYPE_SOCKADDR;
    }
}