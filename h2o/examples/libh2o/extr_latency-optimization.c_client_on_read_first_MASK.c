#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_7__* input; } ;
typedef  TYPE_1__ h2o_socket_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ h2o_iovec_t ;
struct TYPE_13__ {int /*<<< orphan*/  bytes_received; int /*<<< orphan*/  bytes_before_sig; int /*<<< orphan*/  resp_start_at; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  client_on_read_second ; 
 int /*<<< orphan*/  client_on_write_complete ; 
 TYPE_8__ client_stats ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(h2o_socket_t *sock, const char *err)
{
    if (err != NULL) {
        FUNC2(stderr, "connection closed unexpectedly:%s\n", err);
        FUNC1(1);
        return;
    }

    client_stats.resp_start_at = FUNC4(FUNC5(sock));
    client_stats.bytes_before_sig = sock->input->size;
    client_stats.bytes_received = sock->input->size;
    FUNC3(&sock->input, sock->input->size);

    h2o_iovec_t data = {FUNC0("!")};
    FUNC7(sock, &data, 1, client_on_write_complete);
    FUNC6(sock, client_on_read_second);
}