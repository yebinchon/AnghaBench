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
typedef  int /*<<< orphan*/  yoml_t ;
struct addrinfo {int ai_socktype; int ai_protocol; int ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
 int AI_ADDRCONFIG ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct addrinfo *FUNC4(h2o_configurator_command_t *cmd, yoml_t *node, int socktype, int protocol,
                                        const char *hostname, const char *servname)
{
    struct addrinfo hints, *res;
    int error;

    FUNC3(&hints, 0, sizeof(hints));
    hints.ai_socktype = socktype;
    hints.ai_protocol = protocol;
    hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV | AI_PASSIVE;

    if ((error = FUNC1(hostname, servname, &hints, &res)) != 0) {
        FUNC2(cmd, node, "failed to resolve the listening address: %s", FUNC0(error));
        return NULL;
    } else if (res == NULL) {
        FUNC2(cmd, node, "failed to resolve the listening address: getaddrinfo returned an empty list");
        return NULL;
    }

    return res;
}