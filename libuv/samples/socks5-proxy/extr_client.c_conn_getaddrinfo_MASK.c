#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
struct TYPE_7__ {int /*<<< orphan*/  addrinfo_req; } ;
struct TYPE_10__ {TYPE_1__ t; TYPE_3__* client; } ;
typedef  TYPE_4__ conn ;
struct TYPE_9__ {TYPE_2__* sx; } ;
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  conn_getaddrinfo_done ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,struct addrinfo*) ; 

__attribute__((used)) static void FUNC4(conn *c, const char *hostname) {
  struct addrinfo hints;

  FUNC2(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  FUNC0(0 == FUNC3(c->client->sx->loop,
                            &c->t.addrinfo_req,
                            conn_getaddrinfo_done,
                            hostname,
                            NULL,
                            &hints));
  FUNC1(c);
}