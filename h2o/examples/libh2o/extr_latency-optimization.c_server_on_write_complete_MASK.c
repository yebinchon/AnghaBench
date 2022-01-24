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
typedef  int /*<<< orphan*/  h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_on_write_ready ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(h2o_socket_t *sock, const char *err)
{
    if (err != NULL) {
        FUNC1(stderr, "write failed:%s\n", err);
        FUNC0(1);
        return;
    }
    FUNC2(sock, server_on_write_ready);
}