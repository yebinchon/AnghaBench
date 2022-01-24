#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_6__ {int ss_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; TYPE_3__ ss; } ;
struct connection_t {scalar_t__ packet_num_down; scalar_t__ packet_num_up; struct connection_t* next; struct connection_t* prev; TYPE_1__ down_addr; int /*<<< orphan*/  up_fd; int /*<<< orphan*/  cid; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_5__ {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct connection_t connections ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 struct connection_t* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* server_addr ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct connection_t *FUNC9(struct sockaddr *sa, socklen_t salen)
{
    struct connection_t *c;
    static size_t cid;

    for (c = connections.next; c != &connections; c = c->next) {
        if (c->down_addr.ss.ss_family != sa->sa_family)
            continue;
        switch (c->down_addr.ss.ss_family) {
        case AF_INET: {
            struct sockaddr_in *x = (void *)&c->down_addr, *y = (void *)sa;
            if (!(FUNC5(&x->sin_addr, &y->sin_addr, sizeof(x->sin_addr)) == 0 && x->sin_port == y->sin_port))
                continue;
        } break;
        case AF_INET6: {
            struct sockaddr_in6 *x = (void *)&c->down_addr, *y = (void *)sa;
            if (!(FUNC5(&x->sin6_addr, &y->sin6_addr, sizeof(x->sin6_addr)) == 0 && x->sin6_port == y->sin6_port))
                continue;
        } break;
        default:
            FUNC0(!"FIXME");
            break;
        }
        return c;
    }

    /* not found */
    c = FUNC4(sizeof(*c));
    FUNC0(c != NULL);
    c->cid = cid++;
    c->up_fd = FUNC7(server_addr->ai_family);
    if (FUNC1(c->up_fd, server_addr->ai_addr, server_addr->ai_addrlen) != 0) {
        FUNC3(stderr, "failed to connect to server:%s\n", FUNC8(errno));
        FUNC2(1);
    }
    FUNC6(&c->down_addr.ss, sa, salen);
    c->down_addr.len = salen;
    c->prev = connections.prev;
    c->next = &connections;
    connections.prev = c;
    c->prev->next = c;
    c->packet_num_up = 0;
    c->packet_num_down = 0;
    return c;
}